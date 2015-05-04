---
layout:    note-index
permalink: /notes/linux/
title:     Linux
date:      2014-12-08 16:52:00 +0800
modified:  2014-12-08 16:52:00 +0800
---

# Common Commands

## Zip/Unzip

### *.tar, *.tgz

{% highlight bash %}
# Zip
tar -cf target.tar directory
# Unzip
tar -xvf target.tar
tar -zxvf target.tgz
# -x extract
# -v verbose
# -f filename
# -z use gzip
{% endhighlight %}

### *.zip

{% highlight bash %}
unzip target.zip
{% endhighlight %}

## System version

### Kernal version

{% highlight bash %}
cat /proc/version
uname -r
uname -a
{% endhighlight %}

### Release version

{% highlight bash %}
cat /etc/issue
{% endhighlight %}

## Directory size

{% highlight bash %}
du -h /home/aidistan
# -h --human-readable
{% endhighlight %}

## SSH

{% highlight bash %}
# Generate a public/private key-pair
ssh-keygen
# Upload the public key
ssh-cody-id -i /root/.ssh/id_rsa user@remotehost
{% endhighlight %}

# Common Issues

## Line break

### Manifestation

- The script from Windows raises unexpected expectations
- The program failed when reading a data file from Windows

### Solution

- `dos2unix`

## Permissions

##### Manifestation

- Failed to visit some specific web pages
- Failed to create or modify files within the program

##### Solution

- Change the permissions of the target directory
- Enable SELinux's permissive mode
