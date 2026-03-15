## SDET Elite Journey — M0 Reference

> **Format:** Each term includes a Feynman definition (the essence in plain language)
> and an authoritative citation to anchor and verify the definition.
> **Scope:** Agile/Scrum context, BDD fundamentals, and QA awareness terms.

---

## Agile & Scrum

**Scrum**
A lightweight framework for organizing teams and their work to generate value and solve complex problems through iterative delivery.
*(Scrum Guide 2020: "Scrum is a lightweight framework that helps people, teams and organizations generate value through adaptive solutions for complex problems.")*

**Sprint**
A fixed, short time period (usually 1–4 weeks) during which the team commits to deliver a working increment of the product. Every Sprint has a clear start and end — no extensions.
*(Scrum Guide 2020: "Sprints are the heartbeat of Scrum, where ideas are turned into value.")*

**Product Backlog**
The master list of everything the product needs. It is ordered by priority and evolves continuously as the product and its context change.
*(Scrum Guide 2020: "The Product Backlog is an emergent, ordered list of what is needed to improve the product.")*

**Sprint Backlog**
The specific plan and set of tasks the team commits to completing during the current Sprint. It is the team's forecast for the Sprint.
*(Scrum Guide 2020: "The Sprint Backlog is composed of the Sprint Goal (why), the set of Product Backlog items selected for the Sprint (what), as well as an actionable plan for delivering the Increment (how).")*

**Increment**
The sum of all completed, working Product Backlog items delivered at the end of a Sprint. Each Increment must be usable — not a work in progress.
*(Scrum Guide 2020: "An Increment is a concrete stepping stone toward the Product Goal.")*

**Product Goal**
The long-term objective that describes what the product must ultimately become. It gives direction to the Product Backlog and guides prioritization decisions.
*(Scrum Guide 2020: "The Product Goal describes a future state of the product which can serve as a target for the Scrum Team to plan against.")*

**Sprint Goal**
The single objective the team commits to achieving during the Sprint. It gives the Sprint coherence and focus — all work in the Sprint serves this goal.
*(Scrum Guide 2020: "The Sprint Goal is the single objective for the Sprint.")*

**Definition of Done (DoD)**
A shared agreement that defines what "finished" means for any item in the Sprint Backlog. If an item does not meet the DoD, it is not considered complete — regardless of whether the code works.
*(Scrum Guide 2020: "The Definition of Done is a formal description of the state of the Increment when it meets the quality measures required for the product.")*

**Sprint Retrospective**
A structured event at the end of each Sprint where the team inspects how they worked — their interactions, processes, tools, and DoD — and identifies improvements for the next Sprint.
*(Scrum Guide 2020: "The purpose of the Sprint Retrospective is to plan ways to increase quality and effectiveness.")*

---

## BDD & Acceptance Testing

**User Story**
A short description of a product feature written from the perspective of the user. User Stories are the items of the Product Backlog and are prioritized by the Product Owner.
*(Cucumber Docs: "A User Story describes a feature of the system from the perspective of someone using it.")*

**Acceptance Criteria**
The conditions a feature must satisfy to be accepted as complete by the user, client, or other stakeholder. They define the boundary between "done" and "not done" for a User Story.
*(ISTQB Glossary: "The criteria that a component or system must satisfy in order to be accepted by a user, customer, or other authorized entity.")*

**Gherkin**
A domain-specific syntax designed to describe acceptance criteria scenarios in a structured, human-readable format using Given/When/Then language.
*(Cucumber Docs: "Gherkin uses a set of special keywords to give structure and meaning to executable specifications.")*

---

## QA Awareness Terms
> These terms are introduced here for awareness only. Full depth is covered in M3.

**SDLC — Software Development Life Cycle**
A framework that describes the phases software goes through from its initial conception to its retirement. It defines how software is planned, built, and maintained.
*(ISTQB Glossary: "The period of time that begins when a software product is conceived and ends when the software is no longer available for use.")*

**STLC — Software Testing Life Cycle**
A process composed of sequential phases that validates and verifies that a software product meets quality standards, specifications, and client expectations.
*(GeeksforGeeks / ISTQB: "STLC is a fundamental part of the SDLC that provides a structured approach to testing through a step-by-step process.")*

**Test Oracle**
The source of truth that tells you what the expected result of a test should be. Without an oracle, you cannot determine whether a test passed or failed.
*(ISTQB Glossary: "A source to determine expected results to compare with the actual results of the system under test.")*

**Severity**
The magnitude of the impact a defect has on the software's development or operation. A defect that crashes the system has higher severity than one that misaligns a button.
*(ISTQB Glossary: "The degree of impact that a defect has on the development or operation of a component or system.")*

**Priority**
The level of business importance assigned to a defect or User Story. High priority means it must be addressed soon, regardless of its technical severity.
*(ISTQB Glossary: "The level of (business) importance assigned to an item, e.g., a defect.")*

---

*Created: M0.5 — Agile/Scrum Context*
*Last updated: March 2026*
