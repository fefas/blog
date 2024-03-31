---
layout: post
permalink: /:title

title: Clean Code, bullshit or common sense?
image: Washing bunch of dirty dishes

mediumId: clean-code-bullshit-or-common-sense-1218b2c1a119
devtoId: clean-code-bullshit-or-common-sense-3lal

tags: CleanCode Craftsmanship
---

How do we constantly end up with terrible such codebases? Is there anyway to
avoid it? No clear answers so far, but some of root causes may be  easy to spot.

<!--excerpt-->

## Common story

Bob started to work at a new company. Soon he realized his new job would have a
lot to do with a very old and complex legacy system. It was an anemic code
without tests. There was neither any documentation. No explanations about
underlying workflows which should represent the decisions made to solve business
requirements which someday were asked by some stakeholder, then added to the
backlog, implemented and delivered. However, that stakeholder wasn't in the
company anymore as well as the first developers.

What should be called the domain was always very coupled to the infrastructure
concerns... many classes had more than one thousand lines... methods had so many
if statements creating so many paths to go through... namespaces 10 levels
deep... a large usage of classes extensions...

Almost every task would be to solve a bug. Some of them were created a long time
ago and others were introduced recently by a new fix. Trying to investigate the
code history to figure out the reason of some changes and how they could be
related with other parts of the code wasn't even helpful because the commits
weren't well-organized and had poor messages...

For changing a small behavior he had to spend hours debugging and trying to
understand what was written there. After a whole day of work, the result
sometimes was changing or adding ~10 lines. Most of the new code was one more if
statement deciding to update some value because it was wrong somehow causing a
bug... the classes didn't validate themselves... there were getters and setters
everywhere...

_He was experiencing bad code..._

{{ 'Washing bunch of dirty dishes' | post_image }}

## Why does it happen so commonly?

Let's start clarifying something: please, don't get me wrong! I don't want to
say simply the code is a $#@& and to blame developers or companies, because it
won't lead us to anything. That is true, we do have a lot of unprofessional
developers, but just blaming isn't the point and we have to consider a broader
scenario to get deeper.

So, why does it happen? Why are we always wading?

There are many factors that contribute to it. Let's picture a company growing,
hiring more employees to grow faster, new developers come in, old developers
leave, the dynamic business changes the requirements quite constantly, the
communication between IT and business has gaps, developers are so focused to
achieve the sprint commitment, the rush is always putting pressure on everyone
working on the project, no one cares to learn about the user-product
relationship, no one cares to write tests, developers cannot design as it seems
not to deliver short term value, TDD is philosophical, the company doesn't
invest time to train its teams, the most valuable practice is what solves the
today's problem, hero culture rises, we always need more logs to try to realise
what is going on, we need to lead the market...

> I could summarize it as the result of _rush and no study_.

Given that scenario, the output bad code is at least comprehensive. Our world
isn't a nice place sometimes and we have to deal with this reality.

## What is the point then?

I haven't brought you here to give an _easy-solution-answer_, because it simply
doesn't exist.

My goal with this post is to reply the person who has that canned answer when
developers complain about bad code: _Look... the system works and makes money
for the company. That is what matters and the developers are paid to maintain
it_.

Okay... I see the point and I agree with "the most valuable thing is a running
software". It sounds like magic and can comfort us, developers. However, we
still have a big problem there.

Is it really a running software valuable?

A company which highly depends on technology to be running and wants to be
innovative will never achieve its goals when software turns into a maintenance
issue instead of pushing up the business. Coming back to Bob's situation, it's
almost impossible to add or change behaviors of the application. How would be
possible to deliver a new feature which would change the business workflow
without breaking anything else? The risk is too high, the unknown side effects
could be catastrophic and, in this way, the company is trying to survive instead
of being innovative... it's now just brute force... the competition is out there
rising up.

For me, it's hard to see the value being generated given this scenario.

> Software making money today doesn't mean software still making money in the
> future.

Bad code can break established companies and make startups die early... **it
isn't because developers aren't the front line that we can't be the fault
reason**.

Clean code, aka having care for code, aka testing first, is the way to achieve a
software the business can truly grow with. Let's study, let's improve our craft,
let's learn how to manage the rush!

> As developers, it's our responsability to write clean code... that isn't about
> achieving the goal of tomorrow faster, that is about achieving the goal of the
> next year faster and safer...

Have you ever asked yourself what your manager expects from you? Would you guess
short time result or long time result?

I know, I know... the perfection isn't reachable... sometimes we do have to work
on urgent issues. Nevertheless, my point is we shouldn't conform ourselves to
the bad code just going along with it...

## What does my experience say?

I do have a real case where we've spent more time in the beginning to achieve
well parity dev-prod environments, completely isolated database for each running
instance of the project, end-to-end tests for the whole application, feature and
unit tests for each codebase, automated deployment, hexagonal architecture...
well... a lot of themes which are unreachable and philosophical for many out
there... just bullshit for them...

{{ 'TDD chaos-vs-time graph' | post_image }}

It wasn't easy... it was challenging. However, the result of our work turned
into a product with almost zero bug rate. When a new bug is discovered, a new
test scenario is written. Deployments are fast, safe and can be executed
anytime. New features are easy to add and the old ones easy to change... that
are the TDD benefits... that is an agile team!

> We should fight against bad code and always do our best. There is only
> one error: not to try...

Here are some references:

* Robert C Martin, 2008. [Clean Code: A Handbook of Agile Software Craftsmanship](https://www.amazon.com/Clean-Code-Handbook-Software-Craftsmanship/dp/0132350882)
* Nat Pryce; Steve Freeman, 2009. [Growing Object-Oriented Software, Guided by Tests](https://www.amazon.com/Growing-Object-Oriented-Software-Guided-Tests/dp/0321503627)
