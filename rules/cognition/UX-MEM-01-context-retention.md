---
id: UX-MEM-01
title: Context Retention (Recognition over Recall)
category: cognition
severity: mandatory
triggers: [tables, lists, dashboards, scrolling, comparison-views, forms, wizards, multi-step-flows]
version: "5.3"
status: active
---

# [UX-MEM-01] Context Retention (Recognition over Recall)

## Summary
Contextual identifiers (column headers, row keys, section titles) must remain visible while the user scrolls, and values already entered must be redisplayed at every later step that depends on them, so meaning is recognized on sight rather than recalled from memory.

## Scientific Foundation
* **Theory:** Recognition rather than Recall (Nielsen's 6th Usability Heuristic).
* **Key Authors:** Jakob Nielsen.
* **Core Concept:** Human short-term memory is fragile and decays within seconds, and a screen transition wipes it further. Interfaces must keep identifying context on screen at all times so users *recognize* what a value means instead of having to *recall* it from an earlier scroll position or an earlier step.

## Triggers
Long data lists, wide comparative tables, transaction or activity logs, dashboards with many metrics, multi-section forms, floating control panels, multi-step flows and wizards, confirmation and review screens, and any view where content extends beyond one viewport or beyond one step.

## Directives
### 🟢 DO
* Make column headers sticky during vertical scrolling of any table taller than one viewport. Sticky positioning requires `scroll-margin-top` on the focusable elements beneath it so keyboard focus is never obscured — see UX-A11Y-02 (meta-framework conflict resolution).
* Freeze the primary identifier column (name, ID, key) during horizontal scrolling of wide tables.
* Keep the current section or entity label visible (sticky group headers, persistent breadcrumb/title) in long lists and multi-section forms.
* Attach labels, units, and legends directly to the data they describe rather than only at the top of the page.
* Never make the user hold a value in short-term memory across screens or steps: persist previously entered or selected values and redisplay them at the point where they are needed — a running summary in a multi-step flow, an inline recap of the source object beside the action, pre-filled fields on return. This is about *redisplaying* context the user must reason against; forbidding *re-asking* for known data is a separate guarantee (see UX-A11Y-02).

### 🔴 DON'T → INSTEAD
* **Don't:** force users to scroll back to the top or far left to remember what a column, checkbox, metric, or status dot represents. **Instead:** pin headers and the identifier column so context travels with the data.
* **Don't:** explain icons, status colors, or abbreviations only in a legend placed once at the page top. **Instead:** provide inline tooltips or persistent labels at the point of use.
* **Don't:** detach floating action panels from the object they act on. **Instead:** show the selected item's name/count inside the panel ("3 rows selected — Delete / Export").
* **Don't:** advance the user to a later step, confirmation, or comparison view stripped of the values chosen earlier, so the decision depends on remembering them or navigating back. **Instead:** carry those values forward as a persistent recap next to the decision they inform, with an edit affordance that returns to the originating step.

## Example
❌ `<table>` with plain `<thead>`; after scrolling, rows of bare numbers with no visible headers
✅ `<thead class="sticky top-0">` + first column `sticky left-0`; headers and row IDs stay visible at any scroll depth

## Self-Reflection
* "If the user scrolls 50 screens down, scrolls far right, or lands on the last step of a flow, will they still see what each visible value represents *and* what they already chose — without scrolling back or navigating back?"
