---
layout:   note
title:    "Linux"
date:     2014-11-13 12:32:28 +0800
modified: 2014-11-22 13:49:54 +0800
---

## Commands

### Text Manipulating



## Issues

# 常见问题
#### 换行符问题

##### 表现形式
- 来自Windows的脚本程序运行异常
- 程序读取来自Windows的数据文件后崩溃
##### 解决方法
- 将外来文件的换行符改为Unix格式
#### 权限问题
##### 表现形式
- 访问web页面失败
- 程序运行中创建/修改文件失败
##### 解决方法

- 修改目标文件夹权限
- 将SELinux修改为被动模式



## Common Commands

### Zip/Unzip

#### *.tar, *.tgz

{% highlight bash %}
# Zip
tar -cf target.tar directory
# Unzip
tar -xvf target.tar
tar -zxvf target.tgz
    # -x extract
    # -v verbose
    # -f filename
    # -z use gzip
{% endhighlight %}

#### *.zip

{% highlight bash %}
unzip target.zip
{% endhighlight %}

###  查看系统版本

#### 内核版本

```bash
cat /proc/version
uname -r
uname -a
```

#### 发布版本

```bash
cat /etc/issue
```
#### 查看文件夹大小
```bash
du -h /home/aidistan
# -h --human-readable
```
#### SSH
```bash
# 生成公匙/私匙
ssh-keygen
# 上传公匙
ssh-cody-id -i /root/.ssh/id_rsa user@remotehost
```



```bash
# 去重
uniq
# 统计重复数量
uniq -c
```

```bash
# 每4行显示第2行
awk 'NR%4==2'
```


```bash
# 显示前100行
head -n 100 file
```
