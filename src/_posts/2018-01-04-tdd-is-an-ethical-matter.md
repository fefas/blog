---
layout: post
permalink: /:title

title: TDD is an ethical matter
image: Scream

mediumId: tdd-is-an-ethical-matter-17b8ae415fb2
devtoId: tdd-is-an-ethical-matter-19h4

tags: CleanCode Craftsmanship TDD
---

I finally gave my first talk: "An Introduction to TDD"! At the end, what
surprised me weren’t the good questions, rather some who claimed that TDD is an
unreachable ideal and just a philosophical subject.

<!--excerpt-->

## My first talk

Some months ago I gave my first talk: "An Introduction to TDD". I started it
telling about my personal motivation of adopting this practice daily. Therefore,
I cited how the development process can waste a lot of time when we don't have
something helping us to focus on the requirements or guiding us to the next
step. I cited also how developers put too much effort trying to predict all
possibles scenarios from inside to outside.

After that I basically presented the feedback cycle with the three famous steps,
explained the concerns behind each of those steps and introduced to the existing
levels of tests in order to be able to show a sample code which illustrates how
TDD can work on real. At the end I mentioned some good practices like
[AAA](http://wiki.c2.com/?ArrangeActAssert) and
[FIRST](https://pragprog.com/magazines/2012-01/unit-tests-are-first) that are
helpful to improve both legibility and quality of the tests.

The goal of the talk was to give an introduction to the basics elements that a
developer needs to write _test first_ and an overview how the tests should guide
the development process. However those who were interested on the subject, would
still need to go deeper by theirselves.

A good summary: no waste, no effort on useless stuff, no "what if this happens?
Or what if that happens?"... **TDD gives us the opportunity to focus on the
required business behaviors and just solve the problems**.

> I like to say that _TDD is straight to the point_.

## The reaction

At the end what surprised me weren't some questions and the positive feedback,
rather some developers that started to put on balance time versus results,
saying that TDD is an unreachable ideal and just a philosophical subject...

I was there asking myself: why would they be feeling so attacked if I haven't
even said that TDD is a must?

Since then I've been thinking about what happened and here I answer with almost
the same arguments used on [my last
post](/what-should-a-developer-really-catch): we have to be aware of our
professional attitude and of the consequences of our work.

>  Just complaining is the real waste of time.

We have to face the truth and realise that if we aren't writing tests today, we
and others are going to have a lot of problems tomorrow. We also need to study
to be able to delivery the better code as possible... I ensure that tests first
is a good starting point to learn a lot.

Anyway, the main concern remains: _TDD is really hard to adopt 100%_.

Yes, I know that and I don't believe everybody will start applying it perfectly
overnight. Testing in the right way can be really challenging even for the most
experienced developers, because you need not just to have a good understanding
of Dependency Injection, Clean Code, OOP, Refactoring etc., but also to handle
errors decently... the learning curve is relatively long.

However, I will also mention that _TDD is a discipline_.

When you start to use it, to understand it and to experience how TDD helps to
develop faster and to improve code quality, writing tests first will be natural.
It will be easier after each complete cycle and you will do it in a more
consistent way... then suddenly TDD simply composes your development process and
you finally agree **TDD is the opposite of a waste of time**.

I am sure you will be quickly asking yourself: _Why are some developers still
complaining about test first?_

{{ 'Scream' | post_image }}

## Why is TDD an ethical matter?

Uncle Bob starts the Clean Code book with:

> "Writing clean code is what you must do in order to call yourself a
> professional. There is no reasonable excuse for doing anything less than your
> best."

Sorry, but there is no excuse to skip the tests just by argumenting that TDD is
a waste. At the other side are teams emailing the wrong persons while developing
and spending a lot of effort to reproduce and understand bugs already in
production. Those are common situations on incidents where companies simply lost
millions because they couldn't predict simple issues...

Are you still complaining? If your team is slow, you should review your
processes and your application design, if it is hard to adopt TDD, you should
have a plan to teach your team... **skipping tests will be always the wrong
choice**.

Let's analyse what Uncle Bob said during a talk at _GOTO; Amsterdam_ ([video
here](https://www.youtube.com/watch?v=Tng6Fox8EfI&t=2500)):

> "I will provide with each release a quick, sure and repeatable proof that
> every element of the code works as it is supposed to (...) otherwise known as
> tests (...) When did we decide that it is OK if some of that code doesn't
> work? [No,] it is not OK if some of that code doesn't work. And so, we should
> provide proof (...) that the code works as you believe.
>
> We are all humans. We all make mistakes (...). It is not possible to achieve
> perfection, but it is always an error not to try. And the idea that we will
> simply accept a certain level of defects is inappropriate. [It] is unethical.
> We can't accept that."

TDD can take a little more time at the beginning, but trust me it has so many
benefits.

Here are great books to read:

* Jeff Langr, 2015. [Pragmatic Unit Testing with JUnit in Java
  8](https://www.amazon.com/Pragmatic-Unit-Testing-Java-JUnit-ebook/dp/B00VXT0ZA2)
* Nat Pryce; Steve Freeman, 2009. [Growing Object-Oriented Software, Guided by
  Tests](https://www.amazon.com/Growing-Object-Oriented-Software-Guided-Tests/dp/0321503627)
* Robert C Martin, 2008. [Clean Code: A Handbook of Agile Software
  Craftsmanship](https://www.amazon.com/Clean-Code-Handbook-Software-Craftsmanship/dp/0132350882)

Thanks and let's test first!

