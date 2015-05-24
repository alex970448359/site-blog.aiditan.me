---
layout:    note
permalink: /notes/linux/tmux/
title:     tmux
date:      2015-05-24 14:28:21 +0800
modified:  2015-05-24 14:28:21 +0800
---

We use `tmux` to multiplex linux terminals.

{% highlight bash %}
tmux
tmux attach
{% endhighlight %}

Following is a list of common shortcuts:

| **General** |
| `Ctrl+b ?` | list keys |
| `Ctrl+b d` | detach |
| **Panel** |
| `Ctrl+b %` | split horizontal panel |
| `Ctrl+b "` | split vertical panel |
| `Ctrl+b q` | display panel |
| `Ctrl+b space` | next layout |
| `Ctrl+b [arrow]`| select panel |
| **Window** |
| `Ctrl+b c` | new window |
| `Ctrl+b [number]`| select window |
| `exit` | close panel/window |
