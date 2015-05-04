---
layout:    note
permalink: /notes/ruby/clipboard/
title:     clipboard
date:      2014-12-08 18:16:21 +0800
modified:  2014-12-08 18:16:21 +0800
---

Access the clipboard and do not care if the OS is Linux, MacOS or Windows.

{% highlight ruby %}
require 'clipboard'
Clipboard.copy "test"
Clipboard.paste # => "test"
Clipboard.clear
{% endhighlight %}

**Note**: Depend on `xclip` or `xsel` in Linux.
