---
layout:    note
permalink: /notes/grub/
title:     "GRUB"
date:      2014-12-15 19:16:53 +0800
modified:  2014-12-15 19:16:53 +0800
mathjax:
---

# 修改启动等级

- Linux启动时，按任意键进入GRUB
- 按"E"修改该行
- 回车保存修改，按"B"以该命令启动系统

{% highlight bash%}
# Origin
kernel /vmlinuxz-2.6.9-55.ELsmp ro root=LABEL=/ rhgb quiet
# Changed
kernel /vmlinuxz-2.6.9-55.ELsmp ro root=LABEL=/ 3 quiet
{% endhighlight %}

# Change boot order (in Fedora)

## Setting default entry

{% highlight bash%}
# Step 1. list all possible menu entries
grep "submenu\|^menuentry" /boot/grub2/grub.cfg | cut -d "'" -f2

# Step 2. set the desired default menu entry
grub2-set-default "<submenu title>><menu entry title>"
# e.g.
grub2-set-default "Fedora (3.15.10-200.fc20.x86_64) 20 (Heisenbug)"
grub2-set-default "Windows 8 (loader) (on /dev/sdb1)"

# Step 3. verify the default menu entry
grub2-editenv list
{% endhighlight %}


# Reference

* http://fedoraproject.org/wiki/GRUB_2
