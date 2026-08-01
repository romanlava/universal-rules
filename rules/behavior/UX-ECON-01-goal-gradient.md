---
id: UX-ECON-01
title: Progress Motivation (Endowed Start, Accelerating Finish)
category: behavior
severity: recommended
triggers: [checkout, multi-step-forms, wizards, onboarding, checklists, profile-setup, funnels, progress-indicators, dashboards]
version: "5.1"
status: active
---

# [UX-ECON-01] Progress Motivation (Endowed Start, Accelerating Finish)

## Summary
Users complete flows more reliably when progress is visible, genuinely pre-endowed at the start, and mechanically lighter toward the end — motivation and effort accelerate near completion. This rule governs both ends of a flow: credit real progress at the start, shrink effort and accent the finish line at the end.

## Scientific Foundation
* **Theory:** Endowed Progress Effect; Goal-Gradient Hypothesis; resumption of interrupted tasks.
* **Key Authors:** Maria Ovsiankina (1928, task resumption); Joseph Nunes & Xavier Drèze (2006, endowed progress); Clark Hull (1932) and Ran Kivetz, Oleg Urminsky & Yuhuang Zheng (2006, goal gradient). Bluma Zeigarnik (1927) is the historically cited origin, but modern replications of her memory effect are weak — rely on the robust phenomena above.
* **Core Concept:** Visibly unfinished tasks pull users back to resume them; a head start of genuinely credited progress raises completion rates; and invested effort accelerates with proximity to the goal, so late-stage friction is punished disproportionately by abandonment.

## Triggers
Multi-step wizards, onboarding sequences, profile or account setup, setup checklists, checkout and payment funnels, application or submission flows, data-import flows, upgrade paths, dashboard "getting started" panels, any flow with a progress indicator.

## Directives
### 🟢 DO
* Render a persistent progress indicator (steps, bar, or ring) on every multi-step flow, showing current position and total length (stepper visual mechanics: see UX-GEST-04).
* Endow starting progress only from real work: credit genuinely completed steps — signup, imported data, prior input — as "done" so the indicator starts pre-filled rather than at 0% after real effort.
* Keep remaining items always visible (unchecked checklist entries, empty slots, unfilled rings) so the work left is obvious.
* Front-load effort: place the heaviest input steps early and make each later step require fewer fields and clicks than the previous one.
* Make the final step near-zero effort: a pre-filled, read-only summary plus one confirming action.
* Visually accent the finish line and label the final action with its outcome ("Place order", "Finish setup"), stating what completing it unlocks.

### 🔴 DON'T → INSTEAD
* **Don't:** fabricate a fake head start or show progress the user never earned (see UX-KAHN-02). **Instead:** count only real completed work — signup, imported data, prior input — as the first step(s).
* **Don't:** ship a multi-step flow with no visible progress indicator or endpoint. **Instead:** add a step counter or bar ("Step 2 of 4") with the final step named.
* **Don't:** introduce new required fields, upsells, or account-creation demands on the final step. **Instead:** move all data collection to earlier steps and keep the final screen a read-only summary with one confirm button.
* **Don't:** end a flow with a vague "Next" or "Continue" that hides how much remains. **Instead:** name the finish ("Step 4 of 4 — Confirm") and what completing it delivers.

## Example
❌ `After signup: "Step 1 of 4, 0%" … final step: 6 new required fields + button "Next"`
✅ `"Step 2 of 4 [██░░] ✓ Account created · ▸ Connect data" … final step: read-only summary, button "Place order"`

## Self-Reflection
* "Does progress start pre-filled only with genuinely completed work, and does required effort shrink step by step toward a single accented, outcome-named confirmation?"
