---
layout: post
permalink: /:title

title: Pivotal Partnership Integration
image: ACL
excerpt:
  TODO
---

## TL;DR

!! TO DO

## Project Goal

Make the company's financing product be offered as a payment option on
e-commerce checkouts over a partner already widely present on most of the online
stores as a well-established brand.

!! MAKE BETTER

## Context

Due to the partner wide presence in the e-commerce market and its well-known
brand, the expectations were very high. The partnership promisse was not only an
immediate access to countless potential customers, the company's maturing
financing product would also be associate to a brand already trusted by them. A
failure would be a huge disaster because such project with a major partner was
one-in-a-lifetime chance for a startup.

The project was considered to have both pivotal and strategic high values. Once
again: expectations were high.

Additionally to that, due to the project characteristic, it would be fall under
the "e-commerce integration" department which, at that time, had two product
teams composed around by 8 engineers. They also had been lately known by
delivery delays and inconsistencies, meaning that the project had relevant value
as a chance for those teams to rebuild trust.

And there it was where and when I landed.

I joined as a Senior Software Engineer in of those two teams just some weeks
before the so waited kickoff. A draft solution was already on the table.


## Technical Context

In order to make this partnership happen, the company should provide a public
HTTP API complying with the partner requested endpoint interfaces. It looked
like:

```
POST /start-payment
POST /authorize-payment
GET /autorized-payments/{id}
...
```

It was a set of around 10 REST-like endpoints with request and response bodies
well defined. There was also a reponse time limit requirements that we should
pay attention to. Pretty straight forward, right?

The company's existing architecture followed a microservices-like style with
both async and sync communication approaches extensively used. While most of the
services were respecting the bounded contexts kinda of decently, there were some
technical concerns that quickly caught my sensers:

1. Reliability and performance issues due to the extensive use of HTTP calls for
   data query. After talking to few engineers, it was mainly caused by fear of
   data duplication and the absence of eventual consistency concept.

2. Design flaws visible both on internal code and integration interfaces leading
   to anemic domain and complex service integrations.

3. No proper infrastructure setup due to an in-house deployment process leading
   to higher complexity and risk on releases and on new services creation.

4. Not only the database of all services was in a single RDS instance, some
   services were using read access to tables out of their desiguinated schema.
   That made rollbacks highly risky because all services would get affected and
   created highly implicity service coupling.

There were clearly many of the hassles, but not many of the benefits that the
chosen architecture style could provide.

One could assess that those problems were mainly caused by the absence of
meaningful application Domain-Driven Design (DDD) and Micro Service Architecture
principles, but that is another conversation... let's get back to the project.

I mentioned before there was already a draft solution on the table and, as
expected, it was a new microservices with the purpose of containing the
partnership mapping data and forwarding calls to the involved services, In other
words, the solution was anti-corruption layer (ACL) as a microservice between
the partner client and internal services:

{{ 'Proposed Solution' | post_image }}

A futher reason given as justification for a new service creation was
scalability. The argument was that new service could supposely scale
independently according to the partner's demand.

## My Contribution 

After understanding the context of the project, the domain of each microservice,
as well as the use cases present in each of them, getting to know my team mates
better,  the technical details required to meet the project success, I started
making questions, and challenging the proposed solution...  I immediately
realized risks if we were to implement the proposed new service.

The main idea came with the fact that every endpoint demanded by the partner was
already implemented in one of the existing service being one of its
responsibility the direct integration with common e-commerce checkout
solutions, like Magento.

There was only one exception. One of the required endpoints was a brand new use
case not needed so far for the directly integrated e-commerces and, therefore,
an implementation from scratch was required.

Within my second week at the company, I brought my points to the team:

1. A new service for this project would be a mere technical split because there
   was no meaningful bounded context that could justify such hard codebase and
   deployment isolation.

   There was already a service responsible for e-commerce checkout integrations
   and everything could be solved by providing the very same use cases over a
   new port in order to attend this new type of client.

   Furthermore, thanks to the CQS usage to design the use cases of the service,
   a new port implementation would be pretty much trivial.

2. Scalability would not be solved by the simply creation of a new service. In
   our case, the existing service would be the bottleneck regardless of a new
   fast service. Worse than that, the new service would only hurt the response
   time and reliability due to the addition of one more failure point.

   Additionally, we would be closely working with our partner on the activation
   of new e-commerce integrations. This further decreased the seek for a
   premature optmization.

3. High complexity for the new service setup would greatly consume team
   resources without bringing any benefit to the project in the aftermath.

After some discussions, this much simpler solution was agreed and documented.
The implementation escope was reduced from a new microservice to a set of
controllers in a module designated to this new type of client and a table to
match the inner-vs-outer related ids:

{{ 'My Solution' | post_image }}

## Result

The original deadline of 4 months was totally beaten when we delivered the first
store integration in 2 months. We suddenly saw ourselves blocked by our partner.
What was a failure fear, turned into an impressing result echoed to the
up-management and investors. Now we had proven we were a startup that could
deliver a product meeting the expectations of a major market player with high
agility.

The team had the work immensilly recognized during the next quarter meetup and
we were not known for delays any longer, but for our great achievement could
pivot our product.

## Learnings

I had many personal takens from this project.  This is the work I have done in
my recent career path I am most proud of. The reasons are all bellow.

This next statement is propably irrelevant for the audience: I do believe I
nailed this one. While my argumentation skills have much to improve, I naturaly
had the courage and challenged a solution that I was sure it would have brougth
much stress and useless work to the team, leading cost increase to the company.
I stood up and we together could deliver a successful result.

There was also my first proof that I do not have such high microservice
obsession. Before this project, I had always worked on environments where
careful service extraction from monoliths could bring benifits. I like
simplicity and small services can help to reduce the local complexity. However,
here I was sure I could balance pros and cons. Microservice is costly
architectural style and it only gets more costly when principles are hardly
broken and without a proper infrastructure.

It was my first opportunity to create impact without coding. I did code, but the
real impact was on the discussion, planning, and writing the Architectural
Decision Record with pros and cons of the chosen solution. This was a crucial
milestone to my career goal of pursueing technical path.

The most important learning came only much later that I just realized almost two
years after the project completion. My contribution had a meaningful impact only
because:

1. My teammates were pretty open to listening to a very fresh new comer that had
   much less overall context than they did.
2. Management full trust and support.

I am greatly thankful to all my mates at that time. They enabled me in such a
way I could not understand at the time.

Following it, I gotta also watch out myself to **never push others back**.

