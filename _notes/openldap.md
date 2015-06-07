---
layout:    note
permalink: /notes/openldap/
title:     OpenLDAP
date:      2015-06-07 22:29:42 +0800
modified:  2015-06-07 22:29:42 +0800
---

# Install

It's easy to install OpenLDAP 2.4 in CentOS 7.0.

{% highlight bash %}
# Install
yum install openldap openldap-servers openldap-clients

# Enable & Start the service
systemctl enable slapd
systemctl start slapd

# Configurate the database (optional)
cp /usr/share/openldap-servers/DB_CONFIG.example /var/lib/ldap/DB_CONFIG
chown ldap:ldap /var/lib/ldap/DB_CONFIG

# Remove (and then install it agian when you get into mess)
yum remove openldap-servers
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
olcRootPW: {SSHA}2EsTZHfDCXAUwbsLCWO9qc2em1xJJs1F
{% endhighlight %}

Use `config.ldif` to update `cn=config`.

{% highlight bash %}
ldapmodify -xD 'cn=config' -w secret -f config.ldif
{% endhighlight %}

Things should be fine when you check them.

{% highlight bash %}
slaptest -F /etc/openldap/slapd.d
{% endhighlight %}
