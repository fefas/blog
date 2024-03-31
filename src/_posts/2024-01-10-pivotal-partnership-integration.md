---
layout: post
permalink: /projects/:title

title: Pivotal Partnership Integration
image: Contribution

mediumId: pivotal-partnership-integration-3d2709076fa1
devtoId: pivotal-partnership-integration-3l4g

tags: Projects DDD
---

This is a report of how I quickly got onboarded onto a pivotal project and led
the team to make an architectural decision which shortened the delivery to the
half of the initial estimated time by leveraging the existing CQS design and
applying Domain-Driven Design and Hexagonal Architecture principles to plan a
simple and efficient solution.

<!--excerpt-->

## Project

Integrate the company’s financing product as a payment option within e-commerce
checkouts through a partnership with a well-established brand that already holds
a widespread presence across numerous online stores.

{{ 'Project' | post_image }}

## Context

The project held immense pivotal and strategic value, with expectations set
remarkably high.

Given its extensive presence and renowned brand in the e-commerce market, the
partnership not only promised immediate access to a vast customer base but also
aimed to associate the company's maturing financing product with a trusted
brand. A failure would have been catastrophic as such an opportunity with a
major partner was a once-in-a-lifetime chance for a startup.

The project's execution fell under the scope of the "e-commerce integration"
department, then composed of two product teams with around 8 engineers in total.
These teams had recently encountered delivery delays and inconsistencies, making
the successful accomplishment of this partnership project a crucial opportunity
to rebuild trust.

And this is where I stepped in.

Joining as a Senior Software Engineer in one of those two teams just weeks
before the much-anticipated kickoff, I found a draft solution already on the
table.


## Technical Context

To bring this partnership to life, we needed to create a public HTTP API that
complied with the specifications our new partner has handed over to us. It
looked like:

```
POST /start-payment
POST /authorize-payment
GET /autorized-payments/{id}
POST /...
```

The entire specification included around 10 REST-like endpoints with request and
response bodies clearly defined. Additionally, there were response time limits.
Pretty straightforward, right?

The company's existing architecture followed a microservices-like approach,
using both asynchronous and synchronous communication methods. While most
services adhered decently to bounded contexts, a few technical concerns
immediately caught my attention, but that is another discussion not relevant
here... let's get back to the project.

As mentioned earlier, there was already a preliminary solution in place which
entailed the creation of a new shiny microservice with the purpose of housing
partnership mapping data and redirecting calls to the involved services.
Essentially, the solution was an anti-corruption layer (ACL) as a microservice
between the partner client and our internal services.

Another justification for creating this new service was scalability. The
argument presented was that this new service could supposedly scale
independently based on the partner’s demand.

{{ 'Proposed Solution' | post_image }}

## My Contribution 

After familiarizing myself with the project's context, understanding the related
microservice's domain and delving into their relevant use cases, getting to know
my teammates, and absorbing the technical details crucial for project success, I
began questioning and challenging the new microservice. It became evident to me
that implementing it posed significant risks.

Upon scrutinizing the endpoints demanded by the partner, I noticed an important
detail: all use cases behind each required endpoint were already implemented in
one existing service. This service held many responsibilities, being one of them
the direct integration with common e-commerce checkout solutions, such as
Magento. There was only one use case previously unnecessary to the directly
integrated e-commerce platforms but required for this project.  Since its logic
was also closely related to e-commerce integration, it would fit well in this
same service.

Within my second week at the company, I presented my takes to the team:

1. Creating a new service for this project seemed unnecessary as there wasn't a
   meaningful bounded context justifying such segregated codebase and deployment
   isolation.

   The existing service responsible for e-commerce checkout integrations could
   handle everything by simply providing the same use cases via a new port and
   authentication to accommodate the new client type.

   Leveraging Command Query Separation (CQS) already present in the service
   design would make implementing a new port almost trivial.

2. Scalability wouldn't be resolved solely by creating a new service. The
   existing service would remain the bottleneck regardless of a new and faster
   service. Moreover, the new service would likely compromise response time and
   reliability by introducing another potential failure point, hurting our SLA
   agreement.

   Furthermore, the planned close collaboration with our partner on the
   activation of new e-commerce integrations would mitigate the urgency for
   premature optimization.

3. The high complexity associated with setting up the new service would heavily
   drain team resources without commensurate future benefits.

   Additionally, by simply coding into an already running service, the team
   would focus on smaller releases, allowing shorter feedback cycles and
   demonstrating progress iteratively.

Following discussions, a consensus was reached and documented. With this simpler
solution, the implementation scope was streamlined from a new microservice to a
collection of controllers contained in a designated module for this new client
type, alongside a table to map inner-vs-outer data and other minor changes.

{{ 'Contribution' | post_image }}

## Result

We surpassed the original tough 4-month estimation by delivering the first
store integration within a remarkable 2 months. What initially was apprehension
of failure turned into an impressive outcome that resonated throughout upper
management and investors. This success affirmed our identity as a startup
capable of timely delivering a product meeting the expectations of a major
market player.

During the subsequent quarterly meetup, our team received immense recognition
for our work. We transitioned from being known for delays to celebrating how our
achievement could pivot the product and company.

## Learnings

After reading this story, you might think: "Yeah, that was the obvious
solution... not impressed". It was indeed obvious, but not so much for those
immersed in context and facing problems in the service we ended up changing.

My past experience with microservices combined with relevant technical knowledge
and argumentation skills has proven key to guiding the team to an architectural
decision that would really help us instead of causing future frustration.

A second and even more important learning emerged almost two years later. My
contribution could only hold significant weight because of:

1. My teammates' openness to listening to a fresh newcomer with far less overall
   context than they possessed.
2. Management full trust and support.

I am immensely grateful to all my teammates during that period. Their openness
and support enabled me in ways I couldn't fully comprehend at the time.

Moving forward, I gotta watch myself to **never push others back**.

## Takeaways

> The next statements are probably irrelevant to most of the audience, but this
> is still a blog :)

I had many personal taken from this project since it is the work from my recent
career path I am most proud of.

I do believe I nailed this one. While I still gotta much to improve on my
argumentation skills, I naturally had the courage to challenge a solution that I
knew would burden the team with unnecessary stress and useless work, ultimately
escalating costs for the company. Standing up allowed us to collectively deliver
a successful outcome with considerably less effort.

Moreover, this project marked my realization that my enthusiasm for
microservices isn't an all obsession. Prior to this project, I had primarily
operated in environments where careful extracting services from monoliths
brought or could bring substantial benefits. However, here, I proved to myself
the importance of striking a balance between the advantages and disadvantages of
any decision.

This project also presented to me as the first clear opportunity to bring
technical impact beyond coding. While I did also code, the real impact came from
learning, challenging, discussion, assessment, and decision. This milestone is
aligned with my career goals.

