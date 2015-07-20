---
layout:    note
permalink: /notes/linux/zip/
title:     zip
date:      2015-07-20 19:28:54 +0800
modified:  2015-07-20 19:28:54 +0800
---

`zip` is a compression and file packaging utility.

# Examples

To zip up an entire directory, the command:

{% highlight bash %}
zip -r bar foo
{% endhighlight %}

creates  the archive bar.zip, containing all the files and directories in the directory *foo* that is contained within the current directory.

To view the content of a zip archive,

{% highlight bash %}
less bar.zip
# or
unzip -l zipfile
{% endhighlight %}
