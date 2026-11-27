---
id: UX-LOAD-01
title: Cognitive Load Decomposition
category: cognition
severity: mandatory
triggers: [forms, wizards, dashboards, settings, onboarding, feedback-patterns, dense-tables, user-flows, navigation, checkout]
version: "5.4"
status: active
---

# [UX-LOAD-01] Cognitive Load Decomposition

## Summary
Primary paths must run entirely on fast System 1 intuition; deliberate System 2 effort is reserved for genuinely complex or consequential decisions. To get there, manage the three vectors of cognitive load independently: decompose intrinsic complexity into steps sized by task frequency, strip extraneous noise, and maximize germane load with absolutely consistent feedback patterns.

## Scientific Foundation
* **Theory:** Dual Process Theory (System 1 / System 2) as the motivating theory; Cognitive Load Theory as the operational model — total load = intrinsic (task complexity) + extraneous (poor presentation) + germane (schema building), bounded by working memory.
* **Key Authors:** Keith Stanovich & Richard West (coined the terms "System 1/System 2"); Daniel Kahneman (*Thinking, Fast and Slow*); John Sweller; Fred Paas; Jeroen van Merriënboer.
* **Core Concept:** The brain minimizes energy expenditure; interfaces demanding continuous System 2 engagement cause fatigue, errors, and abandonment. Task complexity cannot be deleted, only chunked; presentation noise is pure waste and must be removed; and consistent feedback lets the brain cache interface rules once and reuse them, freeing working memory for the actual task.

## Triggers
Any primary user flow (navigation, onboarding, checkout, form completion); complex forms (multiple topics or roughly more than 7 inputs); configuration and settings screens; dense dashboards; any repeated outcome class (success, error, warning, pending) that appears in more than one place in the product.

## Directives
### 🟢 DO
* Make the happy path fully navigable on System 1 intuition: expected control placement, one obvious next action per step. Force deliberate System 2 friction ONLY at consequential cliff edges — destructive, financial, or irreversible actions.
* **Intrinsic:** decompose by frequency. A rare or branching task becomes a wizard — one topic per step, visible progress, a final review step. A task people repeat daily becomes one decision per step: the question grouped with the facts needed to answer it, on one panel (see UX-NEXT-01) — the unit is one decision, not one field.
* **Extraneous:** delete every element that carries no data or function; structure content with whitespace and typographic hierarchy instead (see UX-ECON-03).
* **Germane:** define one canonical feedback sequence per outcome class (same placement, color token, icon, motion, and wording pattern) and repeat it verbatim in every analogous node; reuse identical interaction skeletons (button order, confirmation pattern, keyboard behavior) for analogous tasks.
* Related canon: plain terminology (see UX-VOICE-01); familiar patterns (see UX-JAKOB-01); carry entered data forward (see UX-A11Y-02).

### 🔴 DON'T → INSTEAD
* **Don't:** put speed bumps (confirmations, warnings, mandatory reading) on routine actions. **Instead:** keep the happy path frictionless and reserve deliberate confirmation for destructive, financial, or irreversible steps.
* **Don't:** render a complex multi-topic form as one long scrolling page. **Instead:** a wizard with grouped steps and a review step for rare or branching tasks; one decision panel per step for tasks repeated daily.
* **Don't:** split a task people repeat many times a day into a field-per-screen wizard. **Instead:** group each decision with the facts it needs on one panel; the screen count is paid on every repetition.
* **Don't:** add decoration that carries no data or function. **Instead:** separate groups with whitespace and heading hierarchy, and delete any non-informative node (see UX-ECON-03).
* **Don't:** improvise a new feedback presentation per screen for the same class of event. **Instead:** apply the one canonical pattern defined for that outcome class in every analogous location.
* **Don't:** vary interaction order between analogous flows (Cancel left of Save on one screen, right on another). **Instead:** fix one skeleton per task type and clone it exactly.

## Example
❌ `One 24-field "Configuration" page with an "Are you sure?" modal on every routine save`
✅ `Wizard: 1 Basics → 2 Network → 3 Security → 4 Review; routine saves are instant with the one canonical green "Changes saved" banner; typed confirmation only for "Delete project"`

## Self-Reflection
* "Can a first-time user complete the happy path without stopping to think — and does deliberate friction appear only at destructive, financial, or irreversible steps, with intrinsic complexity chunked into steps sized to how often the task is done, non-functional elements deleted, and feedback identical to every analogous node?"
