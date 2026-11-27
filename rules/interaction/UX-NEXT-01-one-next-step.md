---
id: UX-NEXT-01
title: Clear Next Step
category: interaction
severity: mandatory
triggers: [any-non-promo-screen, crm, record-cards, work-queues, inboxes, wizards, settings, dashboards, task-flows, portals]
version: "5.5"
status: active
---

# [UX-NEXT-01] Clear Next Step

## Summary
Every screen where a person chooses or acts answers three questions without being searched: where am I and what is the state, what should I do now, and what will happen when I do it. On screens people work through repeatedly, the system computes that next step from facts the person reports.

## Scientific Foundation
* **Theory:** Norman's gulfs of execution and evaluation; feedforward as the bridge over the gulf of execution; situation awareness (perception → comprehension → projection); information scent; automation bias. Evidence and strength: `docs/research/2026-11-next-step-and-information-sufficiency.md`.
* **Key Authors:** Don Norman; Vermeulen, Luyten, van den Hoven & Coninx (feedforward, 2013); Mica Endsley (1995); Pirolli & Card (1999); Parasuraman & Manzey (2010).
* **Core Concept:** A person stalls at two gaps — not knowing what to do, and not knowing what happened or what state they are in. A screen closes both by showing the state with its meaning, one recommended action, and its consequence before it is taken. A recommendation is a default people tend to accept, so it stays trustworthy only when its reason is visible and choosing otherwise stays easy.

## Triggers
Any non-promotional interface where the person must choose or act: CRMs and back-office tools, record and case views, work queues and inboxes, wizards, settings, dashboards with actions, field and portal task flows. Promotional pages follow UX-REST-01; exploratory canvases and pure reports may correctly lack a single next step but still state what the view shows.

## Directives
### 🟢 DO
* Make every screen answer, at a glance: **state** (where am I, what is the status, what does it mean), **next step** (one recommended action, see UX-REST-01), **consequence** (one line saying what the action changes and what opens next) — in every state, including empty and error (see UX-STATE-01).
* Label actions with their outcome ("Send invoice", "Mark as paid"), never their mechanism ("Submit", "Process"), so the label itself predicts the result.
* Ask about facts the person saw ("Did the customer answer?"), never for system states; derive status, codes, and flags from the answer and show them (see UX-ROBUST-03).
* Show the reason for every recommended step and keep the manual alternative visible without a disclosure.
* On repeated task screens: compute the next step in one place so list row, detail view, task, and counter never disagree; open work lists on "needs action" with "Show all N"; after a unit of work, open the next item with the list one press away; record one real-world event with one save.

### 🔴 DON'T → INSTEAD
* **Don't:** leave a screen where the person must work out what to do or what just happened. **Instead:** state the status and its meaning, and show one recommended action with its consequence.
* **Don't:** label a primary action with a mechanism ("Submit", "OK", "Process"). **Instead:** name the outcome and add a consequence line ("Send invoice — the customer gets it by email now").
* **Don't:** offer a status picker or code list on a routine step. **Instead:** offer answer buttons about a fact and let the status follow.
* **Don't:** present a system-chosen step with no explanation and no way to override it. **Instead:** show a reason line and a visible manual alternative.
* **Don't:** return the person to the same record or a dead end after finishing. **Instead:** open the next item, keeping the list one press away.

## Example
❌ Deal view: 14 fields, `Status [dropdown]`, buttons `[Save] [Submit] [Process]`, no hint of what is expected next
✅ `Proposal sent 6 days ago · no reply` → `Next: follow up by phone` (reason: "no reply after 5 days") → `[Log call result]` · "Moves the deal to Negotiation or Lost" · `Other actions ⋯`

## Self-Reflection
* "Looking at this screen cold for ten seconds, would a person know the state, the one thing to do now, and what that action will change — and can they see why it is recommended and how to do something else?"
