---
id: UX-LOC-01
title: Spatial Locality (Context Preservation)
category: interaction
severity: mandatory
triggers: [inline-editing, tables, forms, settings, dashboards, feedback-messages, row-actions]
version: "5.0"
status: active
---

# [UX-LOC-01] Spatial Locality (Context Preservation)

## Summary
Controls and feedback must sit in immediate physical proximity to the object they act on, so the user's eye and cursor never leave the current focal point to complete or verify an action.

## Scientific Foundation
* **Theory:** Fitts's Law and the Gestalt Principle of Proximity.
* **Key Authors:** Paul Fitts, Don Norman (*The Design of Everyday Things*).
* **Core Concept:** Spatial separation between an object and its controls or feedback severs the mental link between action and effect, forces unnecessary eye/cursor travel, and degrades performance sharply in dense, complex tools.

## Triggers
Inline editing of a single value; per-row actions in data tables; granular settings toggles; field-level validation messages; copy/apply/save controls for a localized widget; success or error confirmation after a scoped action.

## Directives
### 🟢 DO
* Place primary controls (Save, Apply, Copy, Edit, Delete) directly on or immediately beside the object they manipulate.
* Render success and error feedback next to or immediately below the interaction point, within the user's current focal area.
* For inline edits, confirm and cancel within the edited element itself (e.g., check/cross buttons inside the row).
* Keep related label, input, help text, and validation message in one visually grouped cluster.
* Use global notifications only for genuinely global events (background job finished, connection lost), not for localized outcomes.

### 🔴 DON'T → INSTEAD
* **Don't:** force a scroll to a single global "Save" at the bottom of a long page after editing one localized parameter. **Instead:** provide a save/apply control adjacent to the edited section, or auto-save with inline confirmation.
* **Don't:** report a field-level validation error via a global toast or a summary banner at the top of the page only. **Instead:** show the message directly under the failing field (a top summary may link to fields as a supplement).
* **Don't:** put row-specific actions in a distant global toolbar that requires selecting the row first. **Instead:** expose the primary row actions inside the row itself (visible or on hover/focus).
* **Don't:** confirm a scoped action ("copied", "applied") in a far screen corner. **Instead:** show the confirmation at the control that triggered it (e.g., button label briefly becomes "Copied ✓").

## Example
❌ `Row 42: [name field edited] … scroll 800px … [Save all] → toast top-right: "1 field invalid"`
✅ `Row 42: [name field] [✓ Save] [✕ Cancel] — error "Name required" appears directly under the field`

## Self-Reflection
* "Are the confirmation control and any feedback text inside the user's current focal point, or am I forcing them to hunt elsewhere on the screen for the system's reaction?"
