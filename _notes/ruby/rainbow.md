---
layout:    note
permalink: /notes/ruby/rainbow/
title:     rainbow
date:      2015-06-11 17:34:46 +0800
modified:  2015-06-11 17:34:46 +0800
---

**Rainbow** is a ruby gem for colorizing printed text on ANSI terminals.

# Usage

To make your string colored wrap it with `Rainbow()` presenter and call methods on it.

## Example

{% highlight ruby %}
require 'rainbow'

p Rainbow("this is red").red + " and " + Rainbow("this on yellow bg").bg(:yellow) + " and " + Rainbow("even bright underlined!").underline.bright
# => "\e[31mthis is red\e[0m and \e[43mthis on yellow bg\e[0m and \e[4m\e[1meven bright underlined!\e[0m"
{% endhighlight %}

## API

Rainbow presenter adds the following methods to presented string:

- `color` (with foreground, and `fg` aliases)
- `background` (with `bg` alias)
- `bright`
- `underline`
- `blink`
- `inverse`
- `hide`
- `italic` (not well supported by terminal emulators).

Text color can also be changed by calling a method named by a color:

- `black`
- `red`
- `green`
- `yellow`
- `blue`
- `magenta`
- `cyan`
- `white`

All of the methods return `self` (the presenter object) so you can chain method calls:

{% highlight ruby %}
Rainbow("hola!").blue.bright.underline
{% endhighlight %}

## String mixin

If you don't like wrapping every string you want to colorize with `Rainbow()` you can include all the rainbow presenter methods directly in a String class by requiring *rainbow/ext/string*:

{% highlight ruby %}
require 'rainbow/ext/string'

puts "this is red".color(:red) + " and " + "this on yellow bg".background(:yellow) + " and " + "even bright underlined!".underline.bright
{% endhighlight %}

This way of using Rainbow is not recommended though as it pollutes String's public interface with methods that are presentation specific.

<div class='am-alert am-alert-warning'>NOTE: the mixing doesn't include shortcut methods for changing text color, you should use "string".color(:blue) instead of "string".blue</div>


# Windows support

For Windows support, you should install the following gems:

{% highlight bash %}
gem install windows-pr win32console
{% endhighlight %}

If the above gems aren't installed then all strings are returned unmodified.


# Reference

- Documents on Rubydoc : [http://www.rubydoc.info/gems/rainbow/2.0.0](http://www.rubydoc.info/gems/rainbow/2.0.0)
