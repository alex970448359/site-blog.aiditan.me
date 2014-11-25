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

{% highlight bash %}
# Install dependencies
yum install python-gevent pyOpenSSL
# Download the latest goagent
...
# Upload
...
# Run
local/proxy.sh start
{% endhighlight %}
