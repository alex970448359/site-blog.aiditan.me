---
layout:    note
permalink: /notes/linux/man/
title:     man
date:      2015-06-11 18:16:00 +0800
modified:  2015-06-11 18:16:00 +0800
---

`man` is an interface to the on-line reference manuals. It will load system's manual papers into `less` for viewing purpose.

{% highlight bash %}
man [section] some_command
{% endhighlight %}

# Section

A section, if provided, will direct `man` to look only in that section of the manual. The default action is to search in all of the available sections (defined in */etc/man_db.conf*) and to show only the first page found, even if page exists in several sections.

The table below shows the section numbers of the manual followed by the types of pages they contain:

1. Executable programs or shell commands
2. System calls (functions provided by the kernel)
3. Library calls (functions within program libraries)
4. Special files (usually found in /dev)
5. File formats and conventions eg /etc/passwd
6. Games
7. Miscellaneous (including macro packages and conventions), e.g. man(7), groff(7)
8. System administration commands (usually only for root)
9. Kernel routines [Non standard]
