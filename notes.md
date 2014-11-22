---
layout: page
permalink: /notes/
title: "Notes"
description: "Work notes"
---

<ul>
  {% for note in site.notes | sort: 'url' %}
  <li><a class="post-link" href="{{ site.url }}{{ note.url }}">{{ note.url | replace_first: '/notes' }}</a>
    <!-- <span class="post-meta">{{ note.date | date: "%b %-d, %Y" }}</span>

    <h2>
    <a class="post-link" href="{{ site.url }}{{ note.url }}">{{ note.title }}</a>
    </h2>

    <span class="post-meta">{{ note.url | replace_first: '/notes' }}</span> -->
  </li>
  {% endfor %}
</ul>
