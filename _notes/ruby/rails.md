---
layout:    note
permalink: /notes/ruby/rails/
title:     rails
date:      2015-06-02 21:20:54 +0800
modified:  2015-06-02 21:20:54 +0800
---

# Attentions (in 4.x)

<h2>Page Change Events <sup><a href='http://guides.rubyonrails.org/working_with_javascript_in_rails.html#page-change-events' target='_blank'><span class='am-icon-external-link'></span></a></sup></h2>

When writing CoffeeScript, you'll often want to do some sort of processing upon page load. With jQuery, you'd write something like this:

{% highlight coffee %}
$(document).ready ->
  alert "page has loaded!"
{% endhighlight %}

However, because Turbolinks overrides the normal page loading process, the event that this relies on will not be fired. If you have code that looks like this, you must change your code to do this instead:

{% highlight coffee %}
$(document).on "page:change", ->
  alert "page has loaded!"
{% endhighlight %}
