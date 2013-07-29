---
title: Design Oversight: Sprint.com
date: 2013-04-08
image: http://f.cl.ly/items/072g2s3j0I122Q0c3k1t/Screen%20Shot%202013-07-16%20at%2010.23.20%20PM.png
layout: post
---

There are various posts on the web centered around the fact that everything in todays world seems to be broken, in some manor or another. I find that one of the most frequent examples of this is when larger companies or projects have a website with noticeable visual imperfections.

In my soon to be occasional 'design oversight' posts I will look at a specific example of this, describe the issue, and then outline the usually quick solution. I rather like the idea of documenting these 'errors' in a centralized location, and what better spot to do this than on my personal site.

### The good ole Sprint.com

My first pick is Sprint.com. This is a great example of a well executed website all around but a complete lack of final polish and touch up. There are examples all over Sprint's website, however, none are more apparent than the search bar being off center vertically.

These types of issues really bother me because the solution is so simple.

#### Current CSS
<code class="prettyprint">
.sprint #navUser {
	top: 5px;
}
</code>

#### Fixed CSS
<code class="prettyprint">
.sprint #navUser {
	top: 4px;
}
</code>

Super simple, I hope someone catches this and gets this resolved, it would make my day.