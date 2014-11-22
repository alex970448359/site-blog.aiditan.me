---
layout: page
permalink: /convict/
title: "囚徒日记"
description: "目标是完美地做到六个最终式"
image:
  feature: convict/20141118.jpg
  credit:
  creditlink:
comments: page-convict
---

<div id="post-index">
  {% for convict in site.convicts  reversed | sort: 'relative_path' %}
  <article>
    <h2>{{ convict.relative_path | replace_first: "_convicts/" | date: "%m月%-d日" }}</h2>
    <div class="entry-content">
      {{ convict.output }}
    </div>
  </article>
  {% endfor %}
</div>
