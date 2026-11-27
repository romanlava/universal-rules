---
id: UX-CHOICE-01
title: Structure over Persuasion (Choice Architecture)
category: behavior
severity: mandatory
triggers: [next-step, onboarding, forms, task-flows, reminders, notifications, checkout, crm, adoption]
version: "5.6"
status: active
---

# [UX-CHOICE-01] Structure over Persuasion (Choice Architecture)

## Summary
To get a step taken, change the structure of the task — remove steps, pre-fill, make the step concrete, show the consequence at the moment of choice — rather than adding persuasion. Information alone rarely moves behavior; structure does, and its effects must be measured, not assumed.

## Scientific Foundation
* **Theory:** Choice architecture; implementation intentions; salience at the point of decision; specific vs generic prompts; corrected nudge effect sizes. Evidence, strength, and rejected claims: `docs/research/2026-11-behavioral-psychology.md`.
* **Key Authors:** Bettinger, Long, Oreopoulos & Sanbonmatsu (2012); Mertens et al. (2022); Gollwitzer & Sheeran (2006); Karlan, McConnell, Mullainathan & Zinman (2016); Chetty, Looney & Kroft (2009); DellaVigna & Linos (2022).
* **Core Concept:** In a field experiment, completing a complex form for people raised follow-through, while giving them the same information alone had no effect. Structural changes outperform changes in wording; a concrete if–then plan beats a vague intention; specific reminders work where generic ones do not; costs not visible at the moment of choice are ignored. At scale, behavioral tweaks deliver small effects, so they complement fixing the flow and never replace it.

## Triggers
Any point where the product needs a person to act: the recommended next step on a screen, onboarding and setup, form completion, follow-ups and reminders, notifications, renewals, adoption of a feature. Applies equally to operators and to end users.

## Directives
### 🟢 DO
* Remove or perform steps on the intended path before adding any message about it: pre-fill, derive, and auto-complete what the system can know (see UX-ROBUST-03).
* State the next step as a concrete action with its object and time — what, for whom, by when ("Call Acme Ltd today before 17:00"), not a vague verb ("Follow up") (see UX-NEXT-01).
* Send prompts that name the specific item and action, at a moment and place where the action can be taken in one step; drop generic "don't forget" reminders.
* Show the consequence and the full cost — fees, totals, what changes — on the screen where the decision is made, not on the next one.
* Add friction only where it protects the person from a harmful or irreversible outcome (see UX-LOAD-01).
* Treat every behavioral change as a hypothesis: define the metric, measure before and after, and keep only what moves it.

### 🔴 DON'T → INSTEAD
* **Don't:** answer low completion with more explanation, banners, or tooltips. **Instead:** find the step that blocks people and remove it, pre-fill it, or do it for them.
* **Don't:** write a next step as a bare verb or category ("Follow up", "Review"). **Instead:** name the action, the object, and the time it should happen.
* **Don't:** send generic reminders on a schedule unrelated to when the action is possible. **Instead:** send a specific prompt linked to the exact item, at a moment the person can act.
* **Don't:** reveal costs, fees, or consequences after the commitment. **Instead:** show them in full at the decision point — hidden costs are a deceptive pattern (see the meta-framework Ethical Gate).
* **Don't:** promise a large lift from a copy, color, or framing tweak. **Instead:** expect a small effect, measure it, and prioritize structural fixes.

## Example
❌ Completion is low → add a banner "Don't forget to complete your profile!" and a weekly generic email; the 9-field form stays as is
✅ 6 of 9 fields pre-filled from data already held → remaining 3 on one screen → prompt sent when a task needs the missing field: "Add the tax ID to send invoice #4182 — 1 field" → completion measured before and after

## Self-Reflection
* "Am I trying to persuade people to take this step when I could remove, pre-fill, or schedule it — is the step concrete, the prompt specific, the consequence visible at the decision point, and will I measure the effect?"
