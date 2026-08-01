---
id: UX-MEM-01
title: Context Retention (Recognition over Recall)
category: cognition
severity: mandatory
triggers: [tables, lists, dashboards, scrolling, comparison-views, forms]
version: "5.0"
status: active
---

# [UX-MEM-01] Context Retention (Recognition over Recall)

## Summary
Contextual identifiers (column headers, row keys, section titles) must remain visible while the user scrolls, so meaning is recognized on sight rather than recalled from memory.

## Scientific Foundation
* **Theory:** Recognition rather than Recall (Nielsen's 6th Usability Heuristic).
* **Key Authors:** Jakob Nielsen.
* **Core Concept:** Human short-term memory is fragile and decays within seconds. Interfaces must keep identifying context on screen at all times so users *recognize* what a value means instead of having to *recall* it from an earlier scroll position.

## Triggers
Long data lists, wide comparative tables, transaction or activity logs, dashboards with many metrics, multi-section forms, floating control panels, and any view where content extends beyond one viewport vertically or horizontally.

## Directives
### 🟢 DO
* Make column headers sticky during vertical scrolling of any table taller than one viewport. Sticky positioning requires `scroll-margin-top` on the focusable elements beneath it so keyboard focus is never obscured — see UX-A11Y-02 (meta-framework conflict resolution).
* Freeze the primary identifier column (name, ID, key) during horizontal scrolling of wide tables.
* Keep the current section or entity label visible (sticky group headers, persistent breadcrumb/title) in long lists and multi-section forms.
* Attach labels, units, and legends directly to the data they describe rather than only at the top of the page.

### 🔴 DON'T → INSTEAD
* **Don't:** force users to scroll back to the top or far left to remember what a column, checkbox, metric, or status dot represents. **Instead:** pin headers and the identifier column so context travels with the data.
* **Don't:** explain icons, status colors, or abbreviations only in a legend placed once at the page top. **Instead:** provide inline tooltips or persistent labels at the point of use.
* **Don't:** detach floating action panels from the object they act on. **Instead:** show the selected item's name/count inside the panel ("3 rows selected — Delete / Export").

## Example
❌ `<table>` with plain `<thead>`; after scrolling, rows of bare numbers with no visible headers
✅ `<thead class="sticky top-0">` + first column `sticky left-0`; headers and row IDs stay visible at any scroll depth

## Self-Reflection
* "If the user scrolls 50 screens down or to the far right, will they still immediately understand what each visible value represents without scrolling back?"
