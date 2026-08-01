---
id: UX-ERR-01
title: Poka-Yoke (Error Prevention & Standardized Error Feedback)
category: interaction
severity: mandatory
triggers: [forms, wizards, settings, checkout, configuration-panels, data-entry, destructive-actions]
version: "5.0"
status: active
---

# [UX-ERR-01] Poka-Yoke (Error Prevention & Standardized Error Feedback)

## Summary
Constrain the UI so invalid states cannot be entered; when an error is still possible, detect it before submission and report it adjacent to its source in a standardized, accessible format.

## Scientific Foundation
* **Theory:** Poka-yoke (mistake-proofing) and Error Prevention (Nielsen's usability heuristic #5).
* **Key Authors:** Shigeo Shingo (industrial mistake-proofing), Jakob Nielsen.
* **Core Concept:** Human error is inevitable in complex tasks. Systems must be physically or logically constrained so invalid states cannot be triggered; prevention through constraints always beats descriptive error messages after the fact.

## Triggers
Any form or data-entry field with a known valid format (dates, emails, numeric ranges, identifiers); configuration panels where a syntax error breaks a downstream process; multi-step wizards; destructive or irreversible actions; file uploads with type/size limits.

## Directives
### 🟢 DO
* Maximize input constraints: replace free-text with dropdowns, radio groups, steppers, date pickers, or masked inputs whenever the valid value space is enumerable.
* Validate inline as the user completes each field; block submission while known-invalid data exists and explain what to fix.
* Render error text directly adjacent to the offending field (spatial locality), never only in a distant summary.
* Standardize error feedback: icon + text (never color alone), text contrast ≥ 4.5:1 against its background, and programmatic association (`aria-describedby`) with the field.
* For destructive actions, require an explicit confirming step scaled to the risk (confirm button, typed confirmation for irreversible bulk deletes).
* Disable or hide actions that are invalid in the current state, with a hint explaining why.

### 🔴 DON'T → INSTEAD
* **Don't:** offer a free-text field for data with a strict format (date, code, enumerated option). **Instead:** use a picker, dropdown, or input mask that makes malformed input impossible.
* **Don't:** let the user submit a form the system already knows is invalid. **Instead:** validate before submission, keep the submit action gated, and point to each failing field.
* **Don't:** signal errors with color only (a red border alone) or a lone toast far from the field. **Instead:** show an icon plus a concrete message next to the field, at ≥ 4.5:1 contrast.
* **Don't:** report failures after the fact with generic text ("Something went wrong"). **Instead:** state what is wrong, where, and the exact corrective action ("Date must be in the future").

## Example
❌ `Server region: [ free text: "esat-1" ] → Submit → toast: "Error: invalid input"`
✅ `Server region: [ dropdown: east-1 ▾ ]` — typo impossible; if a field can fail: `⚠ Enter a value between 1–100` shown under the field before submit.

## Self-Reflection
* "Can the user physically produce an invalid state on this screen — and if any error remains possible, is it caught before submission and shown as icon + high-contrast text right next to its field?"
