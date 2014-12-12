---
layout:    note
permalink: /notes/css/sketch-book/
title:     "Sketch Book"
date:      2014-12-12 20:24:53 +0800
modified:  2014-12-12 20:24:53 +0800
mathjax:
---

<style type="text/css">
h1,h2,h3,h4,h5,h6 {
  display: block;
  clear: both;
}
h1,h2,h3 { margin-bottom: 0; }
div.aidi-showbox{
  float: left;
  padding: 0px;
  margin: 15px;
  height:100px;
  width:100px;
  background:#bfbfbf;
  color: #fff;
  font-size: 40px;
  font-weight: bold;
  line-height: 100px;
  text-align: center;
  cursor: pointer;
}
div#text-shadow div.aidi-showbox {
  background:#fff;
  color: #000;
  font-size: 60px;
}
#text-shadow-01 {
  text-shadow:0 0 0 #000;
  transition: text-shadow 0.2s;
  -webkit-transition: text-shadow 0.2s;
}
#text-shadow-01:hover {
  text-shadow:0 0 20px #000;
  transition: text-shadow 0.2s;
  -webkit-transition: text-shadow 0.2s;
}
#text-shadow-02{
  margin: 0px;
  text-shadow:0 0 0 #aaa;
  transition: text-shadow 0.1s, line-height 0.1s, width 0.1s;
  -webkit-transition: text-shadow 0.1s, line-height 0.1s, width 0.1s;
}
#text-shadow-02:hover{
  width: 90px;
  line-height: 95px;
  text-shadow:5px 5px 5px #aaa;
  transition: text-shadow 0.1s, line-height 0.1s, width 0.1s;
  -webkit-transition: text-shadow 0.1s, line-height 0.1s, width 0.1s;
}
#box-shadow-01{
  box-shadow:0 0 0px 0px #ccc inset, 0 0 0 #ccc;
  transition: box-shadow 0.2s;
  -webkit-transition: box-shadow 0.2s;
}
#box-shadow-01:hover{
  box-shadow:0 0 50px 50px #ccc inset, 0 0 10px 10px #ccc;
  transition: box-shadow 0.2s;
  -webkit-transition: box-shadow 0.2s;
}
#transform-01{
  position: relative;
  background: #fff;
}
#transform-01-1{
  position: absolute;
  top: 0;
  left: 0;
  margin: 0;
  transform:perspective(400px) rotateX(0deg);
  -webkit-transform:perspective(400px) rotateX(0deg);
  transition: transform 0.2s linear 0.2s;
  -webkit-transition: -webkit-transform 0.2s linear 0.2s;
}
#transform-01:hover #transform-01-1{
  transform:perspective(400px) rotateX(90deg);
  -webkit-transform:perspective(400px) rotateX(90deg);
  transition: transform 0.2s linear;
  -webkit-transition: -webkit-transform 0.2s linear;
}
#transform-01-2{
  position: absolute;
  top: 0;
  left: 0;
  margin: 0;
  transform:perspective(400px) rotateX(90deg);
  -webkit-transform:perspective(400px) rotateX(90deg);
  transition: transform 0.2s linear;
  -webkit-transition: -webkit-transform 0.2s linear;
}
#transform-01:hover #transform-01-2{
  transform:perspective(400px) rotateX(180deg);
  -webkit-transform:perspective(400px) rotateX(180deg);
  transition: transform 0.2s linear 0.2s;
  -webkit-transition: -webkit-transform 0.2s linear 0.2s;
}
#transform-02{
  position: relative;
  background: #fff;
}
#transform-02-1{
  position: absolute;
  top: 0;
  left: 0;
  margin: 0;
  transform:perspective(400px) rotateX(0deg);
  -webkit-transform:perspective(400px) rotateX(0deg);
  transition: transform 0.6s linear 0.2s;
  -webkit-transition: -webkit-transform 0.6s linear 0.2s;
}
#transform-02:hover #transform-02-1{
  transform:perspective(400px) rotateX(270deg);
  -webkit-transform:perspective(400px) rotateX(270deg);
  transition: transform 0.6s linear;
  -webkit-transition: -webkit-transform 0.6s linear;
}
#transform-02-2{
  position: absolute;
  top: 0;
  left: 0;
  margin: 0;
  transform:perspective(400px) rotateX(270deg);
  -webkit-transform:perspective(400px) rotateX(270deg);
  transition: transform 0.2s linear;
  -webkit-transition: -webkit-transform 0.2s linear;
}
#transform-02:hover #transform-02-2{
  transform:perspective(400px) rotateX(360deg);
  -webkit-transform:perspective(400px) rotateX(360deg);
  transition: transform 0.2s linear 0.6s;
  -webkit-transition: -webkit-transform 0.2s linear 0.6s;
}
#transform-03{
  position: relative;
  background: #fff;
}
#transform-03-1{
  position: absolute;
  top: 0;
  left: 0;
  margin: 0;
  color: #fff;
  transform:perspective(400px) rotateX(0deg);
  -webkit-transform:perspective(400px) rotateX(0deg);
  transition: transform 0.6s linear 0.2s, color 0s linear 0.6s;
  -webkit-transition: -webkit-transform 0.6s linear 0.2s, color 0s linear 0.6s;
}
#transform-03:hover #transform-03-1{
  color: #bfbfbf;
  transform:perspective(400px) rotateX(270deg);
  -webkit-transform:perspective(400px) rotateX(270deg);
  transition: transform 0.6s linear, color 0s linear 0.2s;
  -webkit-transition: -webkit-transform 0.6s linear, color 0s linear 0.2s;
}
#transform-03-2{
  position: absolute;
  top: 0;
  left: 0;
  margin: 0;
  transform:perspective(400px) rotateX(270deg);
  -webkit-transform:perspective(400px) rotateX(270deg);
  transition: transform 0.2s linear;
  -webkit-transition: -webkit-transform 0.2s linear;
}
#transform-03:hover #transform-03-2{
  transform:perspective(400px) rotateX(360deg);
  -webkit-transform:perspective(400px) rotateX(360deg);
  transition: transform 0.2s linear 0.6s;
  -webkit-transition: -webkit-transform 0.2s linear 0.6s;
}
</style>

# Text

### text-shadow

<div class="aidi-showset" id="text-shadow">
  <div class="aidi-showbox" id="text-shadow-01">01</div>
  <div class="aidi-showbox">
    <div class="aidi-showbox" id="text-shadow-02">02</div>
  </div>
</div>

# Block

### box-shadow

<div class="aidi-showbox" id="box-shadow-01">01</div>

# Transform

### 3D

<div class="aidi-showbox" id="transform-01">
  <div class="aidi-showbox" id="transform-01-1">01</div>
  <div class="aidi-showbox" id="transform-01-2">: )</div>
</div>

<div class="aidi-showbox" id="transform-02">
  <div class="aidi-showbox" id="transform-02-1">02</div>
  <div class="aidi-showbox" id="transform-02-2">: )</div>
</div>

<div class="aidi-showbox" id="transform-03">
  <div class="aidi-showbox" id="transform-03-1">03</div>
  <div class="aidi-showbox" id="transform-03-2">: )</div>
</div>
