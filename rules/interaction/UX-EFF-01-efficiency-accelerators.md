---
id: UX-EFF-01
title: Efficiency for Experts (Accelerators)
category: interaction
severity: recommended
triggers: [dense-tables, lists, bulk-operations, approval-workflows, admin-panels, keyboard-shortcuts]
version: "5.0"
status: active
---

# [UX-EFF-01] Efficiency for Experts (Accelerators)

## Summary
Interfaces must stay learnable for novices while offering accelerators — bulk actions, shortcuts, one-click copy, saved presets — that compress repetitive tasks for expert users. Repetition count is a design defect, not a user burden.

## Scientific Foundation
* **Theory:** Flexibility and Efficiency of Use (7th Usability Heuristic).
* **Key Authors:** Jakob Nielsen.
* **Core Concept:** Frequent users form stable routines; accelerators invisible to novices (shortcuts, batch operations, defaults, templates) let experts tailor and speed up frequent actions without complicating the novice path.

## Triggers
Dense data tables and long lists; moderation and approval queues; error-log triage; recurring configuration edits; admin panels; any workflow where the same action is applied to many items.

## Directives
### 🟢 DO
* Provide bulk selection (Select all, per-row checkboxes) with batch actions (Approve, Delete, Export selected) for any list beyond ~10 items.
* Add one-click "Copy to clipboard" icons next to technical values (IDs, keys, JSON payloads) with a "Copied" confirmation.
* Offer keyboard shortcuts for the most frequent actions and a discoverable shortcut reference.
* Support reusable presets: saved filters, templates, "duplicate item", and remembered last-used settings.

### 🔴 DON'T → INSTEAD
* **Don't:** force users to repeat one algorithmic action item-by-item (e.g. clicking "Approve" 50 times). **Instead:** provide multi-select with a single batch action and a summary confirmation ("Approve 50 items?").
* **Don't:** require manual text selection to copy identifiers or payloads. **Instead:** render an explicit copy button that grabs the exact full value.
* **Don't:** make returning users rebuild the same filter/configuration on every visit. **Instead:** persist last-used state and let users save named presets.

## Example
❌ `Queue of 50 requests → open each row → click Approve → confirm → back (×50)`
✅ `[Select all] → "Approve selected (50)" → one confirmation → done; each row ID has a copy icon`

## Self-Reflection
* "If the user must apply this same change to 50 objects, does the UI finish it in a few clicks — or turn it into 50 repetitions?"
