---
id: UX-ZEIG-01
title: Zeigarnik Effect (Motivation via Incompletion)
category: behavior
severity: recommended
triggers: [wizards, onboarding, checklists, profile-setup, multi-step-forms, dashboards]
version: "5.0"
status: active
---

# [UX-ZEIG-01] Zeigarnik Effect (Motivation via Incompletion)

## Summary
Users are psychologically driven to finish tasks that are visibly unfinished. Every multi-step flow must expose a progress indicator with a visible finish line, and progress should start pre-endowed (never at 0%) by counting already-completed setup as the first step.

## Scientific Foundation
* **Theory:** Zeigarnik Effect; Endowed Progress Effect.
* **Key Authors:** Bluma Zeigarnik; Joseph Nunes & Xavier Drèze.
* **Core Concept:** Uncompleted or interrupted tasks are remembered better than completed ones. A partially filled progress indicator creates cognitive tension that motivates the user to reach 100%; an artificial head-start (endowed progress) significantly raises completion rates.

## Triggers
Multi-step wizards, onboarding sequences, profile or account setup, setup checklists, complex configuration flows, data-import flows, checkout with several stages, dashboard "getting started" panels.

## Directives
### 🟢 DO
* Render a persistent progress indicator (steps, bar, or ring) on every multi-step flow, showing current position and total length.
* Endow initial progress: count registration or initial setup as "Step 1 — done" so the flow starts partially complete, not at 0%.
* Visually mark incomplete target states (empty slots, unfilled rings, unchecked checklist items) so the remaining work is obvious and inviting.
* Show a clear finish line: label the final step and what completing it unlocks.

### 🔴 DON'T → INSTEAD
* **Don't:** ship a multi-step flow with no visible progress indicator or endpoint. **Instead:** add a step counter or progress bar ("Step 2 of 4") with the final step named.
* **Don't:** start progress displays at 0% when the user has already done something (signed up, entered data). **Instead:** credit completed prerequisite actions so the indicator starts pre-filled (e.g. 1 of 4 done).
* **Don't:** hide remaining tasks behind menus where incompletion is invisible. **Instead:** surface an always-visible checklist or ring showing exactly which items remain.

## Example
❌ `Wizard page: form fields only — no step count, no progress, "Next" button.`
✅ `Setup — Step 2 of 4  [██░░]  ✓ Account created · ▸ Connect data · ○ Invite team · ○ Finish`

## Self-Reflection
* "Is the user's progress and the finish line immediately obvious, and does the UI create a natural, non-toxic desire to fill in the remaining blanks?"
