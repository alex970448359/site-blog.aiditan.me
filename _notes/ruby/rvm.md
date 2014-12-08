---
layout:    note
permalink: /notes/ruby/rvm/
title:     "rvm"
date:      2014-12-08 16:54:42 +0800
modified:  2014-12-08 16:54:42 +0800
mathjax:
---

We have **Bundle** to manage the versions of gems we use, but some issues are brought by the ruby interpreter itself. [**Ruby Version Manager**](www.rvm.io) is needed here, which allows users to easily install, manage, and work with multiple ruby environments from interpreters to sets of gems.

{% highlight bash %}
curl -sSL https://get.rvm.io | bash -s stable
# Wait untill installed
source ~/.profile
rvm install ruby-head
rvm use 2.1.5 --default
{% endhighlight %}

RVM used your `Gemfile` for selecting Ruby, it is all fine - Heroku does that too.
