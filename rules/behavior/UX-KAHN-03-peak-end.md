---
id: UX-KAHN-03
title: Peak-End Rule (Design the Ending)
category: behavior
severity: recommended
triggers: [wizards, checkout, onboarding, forms, confirmations, errors, empty-search, flow-completion]
version: "5.3"
status: active
---

# [UX-KAHN-03] Peak-End Rule (Design the Ending)

## Summary
Users judge an experience by its most intense moment and its final moment, not by the average of every step. Every flow must end in a deliberately designed state, and the likely negative peak must receive the most careful design in the flow.

## Scientific Foundation
* **Theory:** Peak-End Rule (memory-based evaluation of experiences).
* **Key Authors:** Daniel Kahneman, Barbara Fredrickson.
* **Core Concept:** Retrospective judgment of an episode is dominated by its emotional peak and its ending; duration and average quality are largely neglected. A flow with one harsh error and an abrupt finish is remembered as bad even if nine of its ten steps were smooth.

## Triggers
The final step of any multi-step flow (checkout, signup, wizard, form submission, import/export, cancellation); moments likely to be the emotional peak: errors, failures, empty search results, long waits, irreversible confirmations.

## Directives
### 🟢 DO
* Terminate every flow in a designed end state: a success confirmation that summarizes the outcome ("what just happened, what was created/changed") and offers one clear next action.
* Make the final step the cheapest in the flow — least input, least thought, fastest response (see UX-ECON-01).
* Give the likely negative peak (error, failure, empty result) the most careful design in the flow: recovery path, preserved input, honest explanation (see UX-ERR-01) and an always-available exit (see UX-CTRL-01).
* Treat an empty search or filter result as a designed moment: state why it is empty and offer a concrete adjustment or alternative (see UX-STATE-01).
* After completion, land the user somewhere purposeful — the created object, an updated list, or a relevant next step.

### 🔴 DON'T → INSTEAD
* **Don't:** end a flow with an abrupt reset, silent redirect, or blank page after submit. **Instead:** show a success state naming the outcome, then offer the next action ("View invoice", "Add another").
* **Don't:** leave the last step as the heaviest one (long legal text, many fields, slow processing with no feedback). **Instead:** front-load effort earlier and keep the final step to one light confirmation (see UX-ECON-01).
* **Don't:** let the worst moment of the flow be an unstyled error dump or dead-end 404-like screen. **Instead:** invest the flow's best design there — plain-language explanation, retained user input, and a recovery action (see UX-ERR-01).
* **Don't:** dead-end the user after success with no exit or continuation. **Instead:** always provide at least one onward path and a way back (see UX-CTRL-01).

## Example
❌ `[Submit] → spinner → redirect to empty dashboard; on failure: "Error 500" on a blank page`
✅ `[Submit] → "Order #— confirmed · 3 items · arriving Fri" [View order] [Continue]; on failure: input preserved + "Payment declined — try another method" [Retry]`

## Self-Reflection
* "Does this flow end in a deliberately designed state with a clear next action, and is its most likely negative moment the best-designed screen in the flow rather than the worst?"
