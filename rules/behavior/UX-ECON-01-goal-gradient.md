---
id: UX-ECON-01
title: Goal-Gradient Effect
category: behavior
severity: recommended
triggers: [checkout, multi-step-forms, wizards, onboarding, funnels, progress-indicators]
version: "5.0"
status: active
---

# [UX-ECON-01] Goal-Gradient Effect

## Summary
Motivation rises exponentially as the user visibly approaches completion. Final steps of any funnel must be mechanically lighter (fewer fields, fewer clicks) and the finish line must be visually accented — this rule governs the end of a flow, complementing UX-ZEIG-01 which governs the start.

## Scientific Foundation
* **Theory:** Goal-Gradient Hypothesis.
* **Key Authors:** Clark Hull; Ran Kivetz, Oleg Urminsky & Yuhuang Zheng.
* **Core Concept:** Effort invested accelerates with proximity to the goal: subjects work measurably faster the closer they are to reward. Interfaces that shrink remaining effort near the end convert this acceleration into completions, while any late-stage friction is punished disproportionately by abandonment.

## Triggers
Checkout and payment funnels, multi-step forms and wizards, onboarding sequences, application or submission flows, upgrade paths, any flow with a progress indicator, final review-and-confirm screens.

## Directives
### 🟢 DO
* Front-load effort: place the heaviest input steps early in the flow and make each subsequent step require fewer fields and clicks than the previous one.
* Make the last step near-zero effort: a pre-filled summary plus one confirming action.
* Visually accent proximity to the finish: emphasize the progress indicator near completion and label the final action with the outcome ("Place order", "Finish setup"), not a generic "Next".
* Show remaining effort in concrete terms near the end ("Last step", "1 field left").

### 🔴 DON'T → INSTEAD
* **Don't:** introduce new required fields, upsells, or account-creation demands on the final step of a funnel. **Instead:** move all data collection to earlier steps and keep the final screen a read-only summary with one confirm button.
* **Don't:** keep every step of a wizard equally heavy. **Instead:** order steps by decreasing effort so perceived speed increases toward the goal.
* **Don't:** end a flow with a vague "Next" or "Continue" that hides how much remains. **Instead:** name the finish ("Step 4 of 4 — Confirm") and state what completing it delivers.

## Example
❌ `Step 4 of 4: 6 new required fields + "Create an account to continue" + button "Next"`
✅ `Step 4 of 4 — Almost done: read-only order summary, 0 new fields, button "Place order"`

## Self-Reflection
* "Does required effort shrink step by step toward the end of this flow, and is the final step a single accented confirming action?"
