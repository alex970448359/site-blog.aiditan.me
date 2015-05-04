---
layout:    note
permalink: /notes/r/
title:     R
date:      2014-12-09 11:32:59 +0800
modified:  2014-12-09 11:32:59 +0800
---

I was confused by R until I got its two major differences from other script languages:

- Use `dot.case` for method or variable names, which looks like calling an object function.
- Use `msg(reciever, ...)` to call an instance method, other than `reciever.msg`.


# Common Functions

## Manipulations

### Manipulate files & paths

{% highlight R %}
# Get current working directory
getwd()
# Set current working directory
setwd()
# Get files in a directory
list.files()
{% endhighlight %}

### Manipulate variables

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

## Others

#### str

As Roger said in his Coursera course *R Programming*, `str` is the most useful function in R. In my opinion, `str` in R is just as handy and common as `p` in Ruby.

{% highlight R %}
> str(cars)
'data.frame':	50 obs. of  2 variables:
$ speed: num  4 4 7 7 8 9 10 10 10 11 ...
$ dist : num  2 10 4 22 16 10 18 26 34 17 ...
{% endhighlight %}


# Common Cases

## Transformations

### Wide Format to Long Format

{% highlight R %}
> str(mtcars)
'data.frame':	32 obs. of  11 variables:
$ mpg : num  21 21 22.8 21.4 18.7 18.1 14.3 24.4 22.8 19.2 ...
$ cyl : num  6 6 4 6 8 6 8 4 4 6 ...
$ disp: num  160 160 108 258 360 ...
$ hp  : num  110 110 93 110 175 105 245 62 95 123 ...
$ drat: num  3.9 3.9 3.85 3.08 3.15 2.76 3.21 3.69 3.92 3.92 ...
$ wt  : num  2.62 2.88 2.32 3.21 3.44 ...
$ qsec: num  16.5 17 18.6 19.4 17 ...
$ vs  : num  0 0 1 1 0 1 0 1 1 1 ...
$ am  : num  1 1 1 0 0 0 0 0 0 0 ...
$ gear: num  4 4 4 3 3 3 3 4 4 4 ...
$ carb: num  4 4 1 1 2 1 4 2 2 4 ...

> str(melt(mtcars))
'data.frame':	352 obs. of  2 variables:
$ variable: Factor w/ 11 levels "mpg","cyl","disp",..: 1 1 1 1 1 1 1 1 1 1 ...
$ value   : num  21 21 22.8 21.4 18.7 18.1 14.3 24.4 22.8 19.2 ...
{% endhighlight %}

## Others

- Fitting distribution in R: [http://cran.r-project.org/doc/contrib/Ricci-distributions-en.pdf](http://cran.r-project.org/doc/contrib/Ricci-distributions-en.pdf)


# Packages

- Venn Diagram
  - [VennDiagram](http://cran.r-project.org/web/packages/VennDiagram/)


# Other References

- Short reference card: [http://cran.r-project.org/doc/contrib/Short-refcard.pdf](http://cran.r-project.org/doc/contrib/Short-refcard.pdf)
