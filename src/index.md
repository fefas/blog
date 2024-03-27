---
layout: base
title: Felipe Martins
permalink: /
---

<ol class="posts">
{% for post in site.posts %}
  {% if post.hidden == true %}{% continue %}{% endif %}

  <li class="post" data-tags="{{ post.tags | tag_to_string }}">
    <h1><a href="{{ post.url }}">{{ post.title }}</a></h1>
    <span class="byline">
      {{ post.date | date: '%d %b %Y' }}
      {% for tag in post.tags %}. <span class="tag" data-tag="{{ tag }}">#{{ tag }}</span>{% endfor %}
    </span>

    <p class="excerpt">{{ post.excerpt | slice: 3, 140 }} ...</p>
  </li>
{% endfor %}
</ol>
