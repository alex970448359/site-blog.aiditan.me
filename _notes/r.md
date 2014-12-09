---
layout:    note
permalink: /notes/r/
title:     "R"
date:      2014-12-09 11:32:59 +0800
modified:  2014-12-09 11:32:59 +0800
mathjax:
---

I was confused by R until I got two major differences from other script languages:

- Use `dot.case` for method or variable names, which looks like calling an object function.
- Use `msg(reciever, ...)` to call an instance method, other than `reciever.msg`.


# Common Usages

#### Manipulate file paths

{% highlight R %}
# Get current working directory
getwd()
# Set current working directory
setwd()
{% endhighlight %}

#### Manipulate variables

{% highlight R %}
# List all variables in the workspace
ls()
# Remove variables
rm()
# Example
rm('x')
rm(list=c('x','y'))
rm(list=ls()) # Remove all variables
{% endhighlight %}


# Comman Cases

- Fitting distribution in R: [http://cran.r-project.org/doc/contrib/Ricci-distributions-en.pdf](http://cran.r-project.org/doc/contrib/Ricci-distributions-en.pdf)


# Other References

- Short reference card: [http://cran.r-project.org/doc/contrib/Short-refcard.pdf](http://cran.r-project.org/doc/contrib/Short-refcard.pdf)
