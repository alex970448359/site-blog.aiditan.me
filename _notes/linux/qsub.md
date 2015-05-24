---
layout:    note
permalink: /notes/linux/qsub/
title:     qsub
date:      2014-12-08 16:56:17 +0800
modified:  2014-12-08 16:56:17 +0800
---

We use `qsub` to submit tasks in Sun Grid Engine:

{% highlight bash %}
qsub script
{% endhighlight %}

And a typical scirpt looks like

{% highlight bash %}
#!/bin/bash                     #声明执行脚本的shell
#$ -S /bin/bash                 #任务在计算节点执行时使用的shell
#$ -q <queue>                   #任务提交的队列
#$ -j yes                       #合并标准错误输出与标准输出
#$ -cwd                         #指明工作目录为当前目录
#$ -N <task>                    #为任务命名
#$ -o <path>                    #指定标准输出的重定向路径
#$ -l [p=|ht=|h_vmem=]          #申请资源
source /data/home/…/.bashrc     #配置用户自定义的环境变量
<bash command>                  #提交的任务
{% endhighlight %}

By now we have

- Two types of queues: `week.q` and `month.q`
- Three types of resources for applying
  - `p` - cores of CPUs
  - `h_vmem` - physical memory
  - `ht` - type of the node: `blade` or `big`

If you wanna run a program on a big node with 8 cores and 10 G memory, use following lines:

{% highlight bash %}
#$ -l p=8          (Do NOT apply for more cores if unneeded）
#$ -l h_vmem=10g   (Default is 4G)
#$ -l ht=big
{% endhighlight %}
