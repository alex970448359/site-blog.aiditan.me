---
layout:    note
permalink: /notes/openldap/
title:     OpenLDAP
date:      2015-06-07 22:29:42 +0800
modified:  2015-06-08 09:41:21 +0800
---

# Install

One line to install **OpenLDAP 2.4** in **CentOS 7.0**.

{% highlight bash %}
yum install openldap openldap-servers openldap-clients
{% endhighlight %}

Enable and start the `slapd` service.

{% highlight bash %}
systemctl enable slapd
systemctl start slapd
{% endhighlight %}

It's **optional** to give a config for the database.

{% highlight bash %}
cp /usr/share/openldap-servers/DB_CONFIG.example /var/lib/ldap/DB_CONFIG
chown ldap:ldap /var/lib/ldap/DB_CONFIG
{% endhighlight %}

When you get into mess, remove the server and reinstall it.

{% highlight bash %}
yum remove openldap-servers
yum install openldap-servers
{% endhighlight %}


# Configurate

OpenLDAP 2.4 uses `/etc/openldap/slapd.d` to configurate its backend. See `man slapd-config` for more information.

Here we use `ldapmodify` to update these configs instead of directly modifications which will introduce a lot **checksum error**.

## Add RootPW for "cn=config"

To modify "cn=config", we have to add a password manually at first.

{% highlight bash %}
$ vim /etc/openldap/slapd.d/cn\=config/olcDatabase\=\{0\}config.ldif
# Add following line after "olcDatabase: {0}config"
# olcRootPW: secret
{% endhighlight %}

Restart the service to make it work.

{% highlight bash %}
systemctl restart slapd
{% endhighlight %}

It will throw errors if you check.

{% highlight bash %}
slaptest -F /etc/openldap/slapd.d
{% endhighlight %}

## Update "cn=config"

Generate your own olcRootPW by `slappasswd -s your_password` and prepare a file named `config.ldif`.

<div class="am-alert am-alert-warning" data-am-alert>
  <button type="button" class="am-close">&times;</button>
  Here are two olcRootPW lines with the same values, one for the DN 'cn=root,dc=example,dc=com', one for the DN 'cn=config'. You could set different passwords for them.
</div>

{% highlight text %}
dn: olcDatabase={0}config,cn=config
changetype: modify
replace: olcRootPW
olcRootPW: {SSHA}yjDTB5WJ+ZdrY9BNwr6nPnX98NMV7cFb

dn: olcDatabase={2}hdb,cn=config
changetype: modify
replace: olcSuffix
olcSuffix: dc=example,dc=com
-
replace: olcRootDN
olcRootDN: cn=root,dc=example,dc=com
-
add: olcRootPW
olcRootPW: {SSHA}yjDTB5WJ+ZdrY9BNwr6nPnX98NMV7cFb
{% endhighlight %}

Use `config.ldif` to update `cn=config`.

{% highlight bash %}
ldapmodify -xD 'cn=config' -w secret -f config.ldif
{% endhighlight %}

Things should be fine when you check them.

{% highlight bash %}
slaptest -F /etc/openldap/slapd.d
{% endhighlight %}

## Import schemas

By default, OpenLDAP itself only includes `core.schema` which maybe not enough in your application. Just import any pre-defined or customized schema like this:

{% highlight bash %}
ldapadd -x -D 'cn=config' -W -f /etc/openldap/schema/cosine.ldif
ldapadd -x -D 'cn=config' -W -f /etc/openldap/schema/nis.ldif
{% endhighlight %}
