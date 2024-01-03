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

Integrate the company’s financing product as a payment option within e-commerce
checkouts through a partnership with a well-established brand that already holds
a widespread presence across numerous online stores.

!! MAKE BETTER !! ADD IMAGE?

## Context

Given its extensive presence and renowned brand in the e-commerce market, the
partnership not only promised immediate access to a vast customer base but also
aimed to associate the company's maturing financing product with a trusted
brand. Failure would have been catastrophic as such an opportunity with a major
partner was a once-in-a-lifetime chance for a startup.

The project held immense pivotal and strategic value, with expectations set
remarkably high.

Adding to this, the project fell under the escope of the "e-commerce
integration" department, by then composed of two product teams with around 8
engineers in total. These teams had recently encountered delivery delays and
inconsistencies, making a successful accomplishment of this partnership project
a crucial opportunity to rebuild trust.

And this is where I stepped in.

Joining as a Senior Software Engineer in one of those two teams just weeks
before the much-anticipated kickoff, I found a draft solution already on the
table.


## Technical Context

To bring this partnership to life, the company needed to create a public HTTP
API that complied with the partner's endpoint interfaces specification. It
looked like:

```
POST /start-payment
POST /authorize-payment
GET /autorized-payments/{id}
...
```

The entire specification included around 10 REST-like endpoints with clearly
defined request and response bodies. Additionally, there were strict response
time limits that required our attention. Pretty straightforward, right?

The company's existing architecture followed a microservices-like approach,
using both asynchronous and synchronous communication methods. While most
services adhered decently to bounded contexts, a few technical concerns
immediately caught my attention, but that is another discussion not relevant
here... let's get back to the project.

As mentioned earlier, there was already a preliminary solution in place.
Predictably, it entailed a new microservice designed to house partnership
mapping data and redirect calls to the involved services. Essentially, the
solution acted as an anti-corruption layer (ACL) microservice situated between
the partner client and our internal services:

{{ 'Proposed Solution' | post_image }}

Another justification for creating this new service was scalability. The
argument presented was that this new service could supposedly scale
independently based on the partner’s demand.

## My Contribution 

After familiarizing myself with the project's context, understanding each
microservice's domain, delving into their relevant use cases, getting to know my
teammates, and absorbing the technical intricacies crucial for project success,
I began questioning and challenging the proposed solution. It became evident to
me that implementing the proposed new service posed significant risks.

Upon scrutinizing the endpoints demanded by the partner, I noticed an important
detail. Every required endpoint was already implemented within one existing
service which held the responsibility of direct integration with common
e-commerce checkout solutions, such as Magento. There was only one exception: an
use case required for this project, previously unnecessary for the directly
integrated e-commerce platforms. Because this new use case was also related to
e-commerce integration, it could be implemented in this same service.

Within my second week at the company, I presented my takes to the team:

1. Creating a new service for this project seemed unnecessary as there wasn't a
   meaningful bounded context justifying such a segregated codebase and
   deployment isolation.

   The existing service responsible for e-commerce checkout integrations could
   handle everything by simply providing the same use cases via a new port to
   accommodate this new client type.

   Leveraging Command Query Separation (CQS) already present in the service
   would make implementing a new port almost trivial.

2. Scalability wouldn't be resolved solely by creating a new service. The
   existing service would remain the bottleneck regardless of a new, faster
   service. Moreover, the new service would likely compromise response time and
   reliability by introducing another potential failure point.

   Close collaboration with our partner on activating new e-commerce
   integrations mitigated the urgency for premature optimization.

3. The high complexity associated with setting up the new service would heavily
   drain team resources without commensurate benefits for the project's outcome.

Following discussions, a consensus was reached and documented. With this simpler
solution, the implementation scope was streamlined from a new microservice to a
collection of controllers within a designated module catering to this new client
type, alongside a table to corelate inner-vs-outer related IDs.

{{ 'My Solution' | post_image }}

## Result

We surpassed the original tough 4-month deadline by delivering the first store
integration within a remarkable 2 months.  What initially were apprehension of
failure turned into an impressive outcome that resonated throughout upper
management and investors. This success affirmed our identity as a startup
capable of timely delivering a product meeting the expectations of a major
market player.

During the subsequent quarterly meetup, our team received immense recognition
for our work. We transitioned from being known for delays to celebrate how our
achievement could pivot pivot the product and company.

## Learnings

I had many personal takens from this project. This is the work from my recent
career path I am most proud of.

This next statement is propably irrelevant for the audience: I do believe I
nailed this one. While my argumentation skills have much to get improved, I
naturaly had the courage the courage to challenge a solution that I knew would
burden the team with unnecessary stress and useless work, ultimately escalating
costs for the company. Standing up allowed us to collectively deliver a
successful outcome.

Moreover, this project marked my realization that my enthusiasm for
microservices isn't an all obsession. Prior to this project, I had primarily
operated in environments where careful extracting services from monoliths
brought substantial benefits. However, here, I proved to myself the importance
of striking a balance between the advantages and disadvantages of any decision.

This project also presented the first clear opportunity to make an impact beyond
coding. While I did also code a bit, but the real impact came from challenging,
discussion, assessment, and decision. This milestone is aligned with my career
goals.

Lastly and the most importantly learning emerged almost two years after the
project's completion. I realized that my contribution could only hold
significant weight because of:

1. My teammates openness to listening to a fresh newcomer with far less overall
   context than they possessed.
2. Management full trust and support.

I am immensely grateful to all my teammates during that period. Their openness
and support enabled me in ways I couldn't fully comprehend at the time.

Moving forward, I gotta watch out myself to **never push others back**.

