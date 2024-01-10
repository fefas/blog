---
layout: base
title: Felipe Martins fefas
permalink: /
---

# {{ site.author.name }} <span class="nickname">{{ site.author.nickname }}</span>

Hello, world! My name is {{ site.author.name }}, aka <span class="nickname"> {{
site.author.nickname }}</span>. I'm a Clean Coder and TDD evangelist which
delivers software ASAP (As Simple As Possible).

This web-blog is a space where I share my ideas and experience. I hope this
content may be useful for you.

You can find me on
  [github]({{ site.author.links.github }}),
  [twitter]({{ site.author.links.twitter }}),
  [stack overflow]({{ site.author.links.stackOverflow }}),
  [linkedin]({{ site.author.links.linkedin }}),
  [medium]({{ site.author.links.medium }}) and
  [dev.to]({{ site.author.links.devto }}).

## Posts

{% for post in site.posts %}
  {% if post.hidden != true %}
  * [{{ post.title }}]({{ post.url }}) <span class="post-date">{{ post.date | date: '%Y %b %d' }}</span>
  {% endif %}
{% endfor %}
