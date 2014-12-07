---
layout:   note
title:    "GoAgent"
date:     2014-11-25 13:52:58 +0800
modified: 2014-11-25 13:52:58 +0800
mathjax:
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
