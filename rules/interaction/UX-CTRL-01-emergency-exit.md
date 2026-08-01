---
id: UX-CTRL-01
title: Emergency Exit & Forgiveness
category: interaction
severity: mandatory
triggers: [destructive-actions, wizards, modals, forms, settings, bulk-operations]
version: "5.0"
status: active
---

# [UX-CTRL-01] Emergency Exit & Forgiveness

## Summary
Users frequently trigger actions or enter states by mistake; every state must offer a clearly marked exit, and destructive actions must be reversible with a single step. Forgiveness lets users explore without fear.

## Scientific Foundation
* **Theory:** User Control and Freedom (3rd Usability Heuristic).
* **Key Authors:** Jakob Nielsen.
* **Core Concept:** An easy way out of unwanted states fosters confidence and exploration. When mistakes are cheap to revert, users act faster and trust the product more; irreversible traps produce hesitation and support load.

## Triggers
Deletion of records, rules, or configuration entries; editing complex settings or scripts; multi-step wizards and onboarding flows; modals and full-screen editors; bulk operations on lists; checkout and long forms.

## Directives
### 🟢 DO
* Provide an immediate "Undo" affordance after destructive actions (e.g. inline banner "Item deleted. [Undo]" persisting for several seconds — pause its timer on hover/focus and keep the item recoverable after it expires, per UX-COGA-01's rule against timers the user cannot stop).
* Place a clear "Cancel" or "Back" control adjacent to every primary Submit/Save action.
* Let users leave multi-step wizards at any step, preserving entered data as a draft they can resume.
* Make dismissal paths obvious: Escape key, close icon, and click-outside for modals (with unsaved-changes guard).

### 🔴 DON'T → INSTEAD
* **Don't:** lock users inside a multi-step wizard until completion. **Instead:** offer "Save draft & exit" at every step and restore the draft on return.
* **Don't:** make deletion instantly permanent behind only a confirm dialog. **Instead:** perform a soft delete with a one-click Undo window, escalating to typed confirmation only for truly irreversible cases.
* **Don't:** present a modal or flow whose only exit is completing the task. **Instead:** always render a visible Cancel/close control that returns the user to the prior state unchanged.

## Example
❌ `Delete rule → [OK] → rule gone forever; wizard step 4/6 with no Back or Exit`
✅ `Delete rule → banner "Rule deleted. [Undo]" (8 s); wizard shows [Back] [Save draft & exit] on every step`

## Self-Reflection
* "If the user misclicked here, can they revert with one click — without contacting support or rebuilding their work from scratch?"
