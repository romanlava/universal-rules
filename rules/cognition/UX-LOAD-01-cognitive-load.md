---
id: UX-LOAD-01
title: Cognitive Load Decomposition
category: cognition
severity: mandatory
triggers: [forms, wizards, dashboards, settings, onboarding, feedback-patterns, dense-tables]
version: "5.0"
status: active
---

# [UX-LOAD-01] Cognitive Load Decomposition

## Summary
Manages the three vectors of cognitive load independently: decompose intrinsically complex tasks into wizards, strip extraneous visual noise, and maximize germane load with absolutely consistent feedback patterns so users can cache the system's mental model.

## Scientific Foundation
* **Theory:** Cognitive Load Theory — total load = intrinsic (task complexity) + extraneous (poor presentation) + germane (schema building), bounded by working memory.
* **Key Authors:** John Sweller; Fred Paas; Jeroen van Merriënboer.
* **Core Concept:** Task complexity cannot be deleted, only chunked; presentation noise is pure waste and must be removed; and effort spent learning the system pays off only if the system behaves identically in identical situations. Consistent feedback lets the brain cache interface rules once and reuse them, freeing working memory for the actual task.

## Triggers
Complex forms (multiple topics or roughly more than 7 inputs); configuration and settings screens; dense dashboards; onboarding flows; any repeated outcome class (success, error, warning, pending) that appears in more than one place in the product.

## Directives
### 🟢 DO
* **Intrinsic:** decompose any complex form into a step-by-step wizard — one topic per step, visible progress indicator, and a final review step before submission.
* **Extraneous:** remove every element that carries no data or function: decorative borders, redundant icons, repeated labels, duplicate CTAs; structure content with whitespace and typographic hierarchy instead.
* **Germane:** define one canonical feedback sequence per outcome class (same placement, color token, icon, motion, and wording pattern for success; likewise for error, warning, pending) and repeat it verbatim in every analogous node of the application.
* Reuse identical interaction skeletons for analogous tasks: same button order, same confirmation pattern, same keyboard behavior across the whole product.

### 🔴 DON'T → INSTEAD
* **Don't:** render a complex multi-topic form as one long scrolling page. **Instead:** a wizard with grouped steps, a progress indicator, and a review step.
* **Don't:** add decorative containers, icons, or dividers "for visual interest". **Instead:** separate groups with whitespace and heading hierarchy, and delete any node that carries no information or action.
* **Don't:** improvise a new feedback presentation per screen — a toast here, a modal there, an inline banner elsewhere for the same class of event. **Instead:** apply the one canonical pattern defined for that outcome class in every analogous location.
* **Don't:** vary interaction order between analogous flows (Cancel left of Save on one screen, right on another). **Instead:** fix one skeleton per task type and clone it exactly.

## Example
❌ `One 24-field "Configuration" page; saving shows a toast on screen A, a modal on screen B, a redirect on screen C`
✅ `Wizard: 1 Basics → 2 Network → 3 Security → 4 Review; every save everywhere = same inline green banner "Changes saved" with checkmark`

## Self-Reflection
* "Have I split intrinsic complexity into steps, deleted every non-functional element, and used the exact same feedback pattern as every other analogous node in this product?"
