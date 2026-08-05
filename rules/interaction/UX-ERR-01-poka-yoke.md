---
id: UX-ERR-01
title: Poka-Yoke (Error Prevention & Standardized Error Feedback)
category: interaction
severity: mandatory
triggers: [forms, wizards, settings, checkout, configuration-panels, data-entry, destructive-actions]
version: "5.3"
status: active
---

# [UX-ERR-01] Poka-Yoke (Error Prevention & Standardized Error Feedback)

## Summary
Constrain the UI so invalid states cannot be entered; when an error is still possible, detect it before submission and report it adjacent to its source in a standardized, accessible format. Constraint applies where the valid value space is finite and enumerable (pickers, enums, steppers) — for input that must remain free-form, see UX-ROBUST-01.

## Scientific Foundation
* **Theory:** Poka-yoke (mistake-proofing) and Error Prevention (Nielsen's usability heuristic #5).
* **Key Authors:** Shigeo Shingo (industrial mistake-proofing), Jakob Nielsen.
* **Core Concept:** Human error is inevitable in complex tasks. Systems must be physically or logically constrained so invalid states cannot be triggered; prevention through constraints always beats descriptive error messages after the fact.

## Triggers
Any form or data-entry field with a known valid format (dates, emails, numeric ranges, identifiers); configuration panels where a syntax error breaks a downstream process; multi-step wizards; destructive or irreversible actions; file uploads with type/size limits.

## Directives
### 🟢 DO
* Constrain the value space wherever it is finite and enumerable: replace free-text with dropdowns, radio groups, steppers, date pickers, or masked inputs. Where the value space is open-ended, keep the field free-form and normalize what is typed instead of rejecting it (see UX-ROBUST-01) — this also covers text a constrained control accepts, so a date picker is correct here and every date it parses must still be normalized, not refused for its format.
* Validate inline as the user completes each field, and validate again on submission; never let invalid data be the thing that disables the submit — it stays enabled and focusable for as long as the form is editable. The one state that legitimately locks the control is an in-flight submission (see UX-STAT-01).
* On activation with invalid data, prevent the submit, move focus to the first invalid field, and announce the error to assistive technology (see UX-A11Y-01).
* Report each remaining error adjacent to its field, never only in a distant summary (see UX-LOC-01), as accessible icon-plus-text feedback with sufficient contrast and programmatic association (see UX-A11Y-01).
* For destructive actions, require an explicit confirming step scaled to the risk (confirm button, typed confirmation for irreversible bulk deletes).
* Where an action is genuinely unavailable, prefer an enabled control that explains the blocker on activation, or `aria-disabled` with a visible explanation of the blocker.

### 🔴 DON'T → INSTEAD
* **Don't:** offer a free-text field for data whose valid values are finite and enumerable (status, region, category, calendar date). **Instead:** use a picker, dropdown, stepper, or mask that makes an invalid choice impossible, while still normalizing any text that control accepts (see UX-ROBUST-01).
* **Don't:** gate a form by disabling the submit button while data is invalid — a bare `disabled` control is unfocusable, announces nothing, and hides the reason the user is stuck. **Instead:** keep the action enabled, block the submit on activation, move focus to the first invalid field, and announce the error (see UX-A11Y-01).
* **Don't:** disable or hide an action that is invalid in the current state with no reachable explanation. **Instead:** keep the control focusable and let activation explain the blocker, or mark it `aria-disabled` with the reason exposed as text.
* **Don't:** signal errors with color only or a lone toast far from the field. **Instead:** show an icon plus a concrete message next to the field (see UX-LOC-01), in accessible multi-channel form (see UX-A11Y-01).
* **Don't:** report failures after the fact with generic text ("Something went wrong"). **Instead:** state what is wrong, where, and the exact corrective action ("Date must be in the future").

## Example
❌ `Server region: [ free text: "esat-1" ] … [ Submit — disabled ]` — invalid value possible, blocker unannounced, button unreachable by keyboard.
✅ `Server region: [ dropdown: east-1 ▾ ]` — invalid choice impossible; `[ Submit — enabled ]` → on activation focus jumps to the failing field with `⚠ Enter a value between 1–100` announced beside it.

## Self-Reflection
* "Is every invalid state either impossible by construction or caught on submission — with the submit control still enabled and focusable, focus moved to the first invalid field, and the reason announced beside it?"
