---
layout: post
permalink: /:title

title: What should a developer really catch?
image: Total Mess

mediumId: what-should-a-developer-really-catch-dbd250233a9e
devtoId: what-should-a-developer-really-catch-1a6j

tags: Craftsmanship
---

In my first post I would like to write about something that isn't found so often
on the internet and most ~~experienced~~ developers are missing.

Maybe because they seem to worry more about _tech-hacks_ than realistic
professionalism... that is my guess.

First of all, I would like to say that this post is both something I have to
vent out and a self-critique.

<!--excerpt-->

## What are we, developers?

Stop it! Let's bring something up:

_When we write code, we write solutions... or that's what we're supposed to do._

No, we aren't coding the next ~~magic~~ wonderful architecture. We SHOULD just
translate business solutions to a code language that SHOULD solve business
problems by adding some value somehow and it SHOULD be delivered in the simplest
and fastest possible way. But we don't!

> _"We are unprofessional"_, Robert Martin has already said that.

In my short career I've seen more than once smart developers having the
opportunity to work on an outstanding business model and using that business
complexity as their motivation to build nice, sophisticated and high-tech
applications which, as it turned out, ~~helped the company grow up~~ were just
another group of hard-to-understand words and far far away from the business
itself. In other words, a waste of time and money resulting in a code that was
already legacy at the first day after deployment. A total mess!

{{ 'Total Mess' | post_image }}

What I am trying to put in words is strictly related to the professional
attitude of a software developer. You are never going to be a respected CTO or
even a senior if you don't give a damn to the next people that will continue the
work; the next person can always be you again and again...

We have to face the truth by caring about how our current code will help the
next developer in maintaining it. When we go a little deeper, we should ask
_why, what, how_ before coding anything. We have to know the way our work is
going to impact the users. Understanding the final users and the business
requirements is a critical gap between good and bad code.

If a developer doesn't have those concerns in mind, he is writing a bunch of
lines that don't make sense together and, instead of improving users'
experience, the growing mess isn't adding any value... the company may go out of
business quickly.

> Just to be clear: when I say good code I mean _expressive_ code, not an
> agglomeration of design patterns. Good code is simple and direct.

## Where is our problem then?

This could be an endless discussion. So, I selected only two of my guesses I
judge being the most critical ones.

Many developers, just like me, didn’t pursue software-related degree at
university. Actually, some of us didn't even go to college; and those who took
software-related courses realized they didn't study exactly what is required to
solve real problems. In other words, we teach ourselves almost everything by
digging the internet.

That proves we are extremely self-motivated and curious. Indeed, we really enjoy
learning more and more. The problem is that the internet has so much information
that the beginners **end up placing so much importance on what gives short-term
results**, that is tools.

Programming languages, frameworks, libraries and so on are important and make
you powerful, but they all are **still just tools**.

A very important point to note on tools is when you stop to follow that nice
framework for a couple of months and then you are suddenly out of date. But
don't bother! You can read the new documentation and update yourself again
quickly. Tools are ephemeral, easy to learn, abundant on the web and, trust me,
most of them don't give a &$%# to your business domain.

On the other hand, when developers come across some new subject or tool, instead
of taking the needed time to search and really understand it before coding, they
go straight ahead and want to adopt it everywhere, because the ~~new silver
bullet~~ solution was discovered. The result (not to say problem) is
predictable...

For me, this kind of developer is the most dangerous, because they normally have
more work-experience and are still acting like the ninja ones. Their attitude
brings premature and wrong usage of tools, procedures and methodologies, putting
the whole business and the collaborators in risk. They have no idea about their
positions' value.

## So, what should we really study?

Years ago at university I heard someone saying:

> _"What makes a snooker player stand out is not just trying to pocket the most
> challenging balls, but rather to best place the white ball for the next
> shot."_

During the last two years I worked with great teams that introduced me to some
terms: Clean Code, Test Driven Development (TDD), Domain-Driven Design (DDD),
Behavior Driven Development (BDD), Continuous Integration (CI), (real) Object
Oriented Programming (OOP), DevOps, Agile Manifesto, Software Craftsmanship etc.

I still have a lot to learn about those subjects, but they already changed my
professional attitude and today I know I am on the right way to become that
respected developer I've always dreamed to.

Meetups and daily knowledge exchange with team members are all important to
discuss different readings about those terms, but they alone will still give you
a limited understanding. Therefore, the only way to have a deep knowledge is by
searching it by yourself through books, podcasts, events and so on.

The following books list is the main reason I wrote this post. Of course I
haven't read all of them yet, but the ones I did have changed the way I develop
every couple of pages, turning me into a **more conscious and mature
developer**:

- Jeff Langr, 2015. [Pragmatic Unit Testing with JUnit in Java 8](https://www.amazon.com/Pragmatic-Unit-Testing-Java-JUnit-ebook/dp/B00VXT0ZA2)
- Nat Pryce; Steve Freeman, 2009. [Growing Object Oriented Software, Guided by Tests](https://www.amazon.com/Growing-Object-Oriented-Software-Guided-Tests/dp/0321503627)
- Erich Gamma; Richard Helm; Ralph Johnson; John Vlissides, 1994. [Design Patterns: Elements of Reusable Object-Oriented Software](https://www.amazon.com/Design-Patterns-Elements-Reusable-Object-Oriented/dp/0201633612)
- Robert C Martin, 2008. [Clean Code: A Handbook of Agile Software Craftsmanship](https://www.amazon.com/Clean-Code-Handbook-Software-Craftsmanship/dp/0132350882)
- Martin Fowler, 2002. [Patterns of Enterprise Application Architecture](https://www.amazon.com/Patterns-Enterprise-Application-Architecture-Martin/dp/0321127420)
- Bertrand Meyer, 2009. [Touch of Class: Learning to Program Well with Objects and Contracts](https://www.amazon.com/Touch-Class-Learning-Program-Contracts/dp/3540921443)
- Vaughn Vernon, 2013. [Implementing Domain-Driven Design](https://www.amazon.com/Implementing-Domain-Driven-Design-Vaughn-Vernon/dp/0321834577)
- Vaughn Vernon, 2016. [Domain-Driven Design Distilled](https://www.amazon.com/Domain-Driven-Design-Distilled-Vaughn-Vernon/dp/0134434420)
- David Farley; Jezz Humble, 2010. [Continuous Delivery](https://www.amazon.com/Continuous-Delivery-Deployment-Automation-Addison-Wesley/dp/0321601912)
- Mark Massé, 2011. [Rest API Design Rulebook](http://shop.oreilly.com/product/0636920021575.do)
- Michael Nygard, 2007. [Release It!](http://shop.oreilly.com/product/9780978739218.do)
- Ken Schwaber; Jeff Sutherland, 2016. [The Scrum Guide](http://www.scrumguides.org/docs/scrumguide/v2016/2016-Scrum-Guide-US.pdf#zoom=100)
- Thomas Björkholm; Jannika Bjorkholm, 2015. [Kanban in 30 days](https://www.amazon.com/Kanban-30-days-Tomas-Björkholm/dp/1783000902)
- James Shore, 2007. [The Art of Agile Development](http://shop.oreilly.com/product/9780596527679.do)
- Sandro Mancuso, 2013. [The Software Craftsman: Professionalism, Pragmatism, Pride](https://www.amazon.com/dp/B00QXAGIDO/ref=cm_sw_r_cp_dp_T1_T3zrzb5139XRC)
- Ash Maurya, 2012. [Running Lean](http://shop.oreilly.com/product/0636920020141.do)

And you can also follow the authors:

- [Robert C. Martin (aka Uncle Bob)](https://twitter.com/unclebobmartin)
- [Kent Beck](https://twitter.com/KentBeck)
- [Vaughn Vernon](https://twitter.com/VaughnVernon)
- [Martin Fowler](https://twitter.com/martinfowler)
- [Grady Booch](https://twitter.com/Grady_Booch)
- [James Coplien](https://twitter.com/jcoplien)
- [Eric Evans](https://twitter.com/ericevans0)
- [Rebecca Wirfs-Brock](https://twitter.com/rebeccawb)

My recommendation is to start with _The Software Craftsman_ by _Sandro Mancuso_.

I hope you can also find a reference to follow on those books. And remember,
**simplicity is a keyword**.

> _Is there already any T-shirt with "Don't worry and keep it simple"?_

> Thank you [Eriksen Costa](https://blog.eriksen.com.br) for sending both lists
> when you were my boss and also thank you [Eduardo
> Dobay](https://twitter.com/esdobay) for helping me with typo and english
> mistakes.
