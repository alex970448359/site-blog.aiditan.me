---
layout:    note
permalink: /notes/matlab/
title:     "MATLAB"
date:      2014-12-11 17:39:31 +0800
modified:  2014-12-11 17:39:31 +0800
mathjax:
---

# Common Operations

## File Operations

{% highlight matlab %}
fopen
fprintf
fclose
{% endhighlight %}

## Runtime Statistics

Following is an example:

{% highlight matlab %}
profile on;
% The function to run
profile off;
profsave(profile('info'), 'profiling_results')
{% endhighlight %}

For more details, please goolge "Profiling for Improving Performance".

## Dimension manipulations

{% highlight matlab %}
% squeeze
a=rand(2,1,3)
b=squeeze(a)
size(b)
{% endhighlight %}
