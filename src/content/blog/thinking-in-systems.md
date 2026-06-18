---
title: "Thinking in Systems"
description: "How understanding feedback loops changed the way I design software."
pubDate: 2026-03-10
tags: ["architecture", "systems-thinking"]
draft: false
---

A few years ago, I started thinking about software differently. Instead of focusing on individual features, I started looking at the connections between them. How does a change here ripple through the rest of the system?

## Feedback Loops Everywhere

Software is full of feedback loops. A caching layer makes queries faster, which increases traffic, which puts more load on the database. A feature that sends notifications creates more user engagement, which generates more notifications.

## Designing for Systems

When you think in systems, you stop optimizing individual components and start optimizing the relationships between them. You ask different questions: What happens when this fails? What are the second-order effects of this change? Where are the hidden coupling points?

This mindset doesn't make you write more code. It makes you write different code — code that fits into a larger whole rather than fighting against it.
