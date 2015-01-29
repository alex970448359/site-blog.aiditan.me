---
layout: post
title: "微信弹幕火狐版上线啦！"
description: "可以将网页版微信的消息即时显示在任意标签页上哦～"
modified: 2015-01-30 22:17:17 +0800
tags: [未分类]
image:
  feature: 2015/0129.jpg
  credit:
  creditlink:
comments: post-20150129
---

最近参加了一次 Fedora 21 的发布会，对**弹幕**这种打通台上台下的沟通方式有了全新的理解。因此，微信弹幕火狐版上线啦！

# 安装

目前支持[从火狐扩展商店安装](https://addons.mozilla.org/zh-CN/firefox/addon/weixin-danmu/)和[从Github直接安装]({{ site.baseurl }}/assets/misc/weixin-danmu.xpi)。


# 使用

## 基本使用

1. 安装插件
2. 在火狐浏览器的任意一个标签中登陆网页版微信
3. 打开要捕获消息的群或好友的对话框
4. 切换到要显示弹幕的任意一个网页
5. 在手机微信上向所选的好友或群发消息
6. 弹幕出现！

## 详细说明

### 修改配置

打开附加组件页面 (`Ctrl + Shift + A`)，点击**微信弹幕**对应的设置按钮进入组件的详情页面，从中可以调整：

- 弹幕的默认字体大小
- 开启/关闭消息通知显示
- 开启/关闭微信消息测试模式和弹幕发射测试模式

### 工具栏按钮

1. 未侦测到网页微信时按钮呈灰色，点击按钮会打开网页微信页面
2. 网页微信完整加载后，按钮会自动点亮，此时点击可以关闭/开启弹幕显示
3. 弹幕发射测试模式下，点击按钮总是会自动发射随机字符串到弹幕

### 自定义弹幕

目前支持自定义弹幕颜色、大小（可叠加）和位置，格式统一为“英文冒号 + 魔力字符”；未给定的属性将被赋予随机值。

#### 魔力字符

<style>
.ctl-color {
  padding: 10px;
  color: white;
  font-weight: bold;
}

.ctl-other {
  padding: 9px;
  border: 1px solid black;
  font-weight: bold;
}

#ctl-container {
  width: 450px;
  margin: 0 auto;
}
</style>

<div id="ctl-container">
  <span class="ctl-color" style="background: #00aeef">蓝</span>
  <span class="ctl-color" style="background: #ea428a">红</span>
  <span class="ctl-color" style="background: #eed500">黄</span>
  <span class="ctl-color" style="background: #f5a70d">橙</span>
  <span class="ctl-color" style="background: #8bcb30">绿</span>
  <span class="ctl-color" style="background: #9962c1">紫</span>
  <span class="ctl-color" style="background: #333333">黑</span>
  <span class="ctl-other" style="font-size:20px;">大</span>
  <span class="ctl-other" style="font-size:12px;">小</span>
  <span class="ctl-other" style="padding-top: 0; padding-bottom: 18px;">顶</span>
  <span class="ctl-other" style="padding-top: 18px; padding-bottom: 0;">底</span>
</div>

#### 效果示意

<style>
  #demo-container {
    position: relative;
    margin: 0 auto;
    width: 480px;
    height: 270px;
    border: 1px solid black;
  }

  .demo-bullet {
    position: absolute;
    width: 100%;
    text-align: center;
    font-weight: bold;
  }

  .demo-lead {
    color: #c8c8c8;
  }

  #demo-bullet1 {
    color: #333333;
    font-size: 24px;
    top: 100px;
  }

  #demo-bullet2 {
    color: #ea428a;
    font-size: 12px;
    bottom: 0px;
  }

</style>

<div id="demo-container">
  <p id="demo-bullet1" class="demo-bullet"><span class="demo-lead">:大:黑</span>Valar Morghulis</p>
  <p id="demo-bullet2" class="demo-bullet"><span class="demo-lead">:红:底:小</span>Valar Dohaeris</p>
</div>

**备注**：实际中，英文冒号和魔力字符（灰色部分）不会显示。


# 致谢

本插件深受 [WeShoot](https://github.com/Integ/WeShoot) 启发，特此感谢！
