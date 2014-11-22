---
layout:   note
title:    "progressbar"
date:     2014-11-13 00:49:18 +0800
modified: 2014-11-22 13:49:54 +0800
---

{% highlight ruby linenos %}
#!/usr/bin/env ruby
require 'progressbar'

bar = ProgressBar.new("Example Progress", 100)
total = 0
until total >= 100
  sleep(rand(2)/2.0)
  increment = (rand(6) + 3)
  bar.inc(increment)
  total += increment
end
{% endhighlight %}
