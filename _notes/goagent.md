---
layout:    note
permalink: /notes/goagent/
title:     GoAgent
date:      2014-12-08 16:53:18 +0800
modified:  2014-12-08 16:53:18 +0800
---

[GoAgent](https://github.com/goagent/goagent/) is a gae-based proxy.

# Installation

## Fedora

Install dependencies by

{% highlight bash %}
yum install python-gevent pyOpenSSL
{% endhighlight %}

Download the latest version, upload the server-side and run the local-side by

{% highlight bash %}
local/proxy.sh start
{% endhighlight %}
