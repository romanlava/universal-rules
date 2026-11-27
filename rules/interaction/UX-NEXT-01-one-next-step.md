---
id: UX-NEXT-01
title: One Clear Next Step (Task Screens)
category: interaction
severity: mandatory
triggers: [record-cards, work-queues, inboxes, triage, task-flows, back-office, field-apps, portals]
version: "5.4"
status: active
---

# [UX-NEXT-01] One Clear Next Step (Task Screens)

## Summary
On any screen people work through repeatedly — record cards, work queues, inboxes, triage, field and portal task flows — every state shows exactly one next step with its reason and consequence; the system computes the step from facts the person reports, and work lists show what needs action rather than everything.

## Scientific Foundation
* **Theory:** Tesler's law applied to decisions (the system derives states, the person reports facts); KLM / GOMS — critical-path time is driven by decisions and reads, not clicks; automation bias; high-performance HMI and alarm management (a highlighted state must require a response).
* **Key Authors:** Card, Moran & Newell (KLM, 1980); Gray, John & Atwood (Project Ernestine, 1993); Parasuraman & Manzey (automation bias, 2010); ISA-101 / ISA-18.2.
* **Core Concept:** An operator's cost is the decision, not the click. A screen that offers several competing actions, asks for system states the operator must translate, or shows every record and every number forces a decision on every visit. A computed next step removes the decision — but only stays trustworthy if its reason is shown and the person can still choose otherwise.

## Triggers
Task-oriented screens used repeatedly: record or case detail views, work queues and inboxes, triage lists, back-office consoles, field-worker phone flows, task screens of self-service portals. Not for exploratory analysis, creative canvases, reading surfaces, or overview/report screens, which often correctly have no single next step.

## Directives
### 🟢 DO
* Lead each working screen with one next-step block: the reason in words, a question about an observable fact with 2–5 answers, one primary action (see UX-REST-01), and a one-line consequence of what changes and what opens next — in every state, including empty and error (see UX-STATE-01).
* Ask about facts the person saw ("Where is the item now?"), never for system states; derive status, codes, and flags from the answer and show them (see UX-ROBUST-03).
* Compute the next step in one place and have every surface — list row, detail view, task, counter — read the same result, so they never disagree.
* Show the reason for every computed step and keep the manual alternative visible without a disclosure.
* Open work lists on "needs action" with a visible "Show all N"; reserve color and alerts for deviations that have a defined action.
* After completing a unit of work, open the next item ("Next: …") with a visible way back to the list; an empty queue says when the next item is due.
* Record one real-world event with one save, and route each action through one place instead of prompting it from several blocks.

### 🔴 DON'T → INSTEAD
* **Don't:** offer a status picker or code list on a routine step. **Instead:** offer answer buttons about a fact and let the status follow from the answer.
* **Don't:** present a system-chosen step with no explanation and no way to override it. **Instead:** show a reason line and a visible manual alternative.
* **Don't:** open a work list on "All" or color every row. **Instead:** default to items needing action and color only states that require a response.
* **Don't:** return the person to the same record or a dead end after saving. **Instead:** open the next item, keeping the list one press away.
* **Don't:** prompt the same action from several blocks, tasks, and messages. **Instead:** let one block own the action; the others go quiet and point to it.

## Example
❌ Record view: `Status [dropdown: 9 internal states]` + three blocks each with a "Call" button + list opens on "All (1,240)"
✅ `Missed payment due Tue — Did the customer answer? [Yes, will pay] [Yes, can't pay] [No answer]` → `Status: Promise to pay · follow-up Thu` → `[Save and next: case #4182]` · list opens on "Needs action today (14) · Show all"

## Self-Reflection
* "In every state of this task screen, is there exactly one next step with its reason and consequence — and am I asking the person only about facts, never for a state the system could derive?"
