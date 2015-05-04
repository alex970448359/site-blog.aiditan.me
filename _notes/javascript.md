---
layout:    note
permalink: /notes/javascript/
title:     javascript
date:      2015-04-06 18:10:06 +0800
modified:  2015-04-06 18:10:06 +0800
---

# Access a element in a child iframe

{% highlight javascript %}
jQuery('textarea', window.frames['tblog'].contentDocument.documentElement)
{% endhighlight %}
