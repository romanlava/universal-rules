---
id: UX-ECON-04
title: Parkinson's Law
category: behavior
severity: mandatory
triggers: [text-blocks, forms, dense-tables, dashboards, responsive-layouts, wide-screens, modals]
version: "5.1"
status: active
---

# [UX-ECON-04] Parkinson's Law

## Summary
Work — and interface elements — expand to fill the space available. Every text block and data container must carry an explicit max-width constraint (45–75 characters per line for reading text) so ultra-wide viewports cannot stretch content and destroy typographic hierarchy.

## Scientific Foundation
* **Theory:** Parkinson's Law, applied spatially to layout; typographic line-length research.
* **Key Authors:** Cyril Northcote Parkinson; Miles Tinker; Robert Bringhurst.
* **Core Concept:** Without hard limits, containers inherit the full viewport and content sprawls to fill it. Comfortable reading measure is 45–75 characters per line, ~66 ideal (Bringhurst); Tinker's legibility research found moderate line lengths optimal. Lines beyond ~80 characters degrade reading speed and return-sweep accuracy, related elements drift apart, and visual hierarchy collapses. Constraining width is not decoration — it preserves scanability and proximity on any screen.

## Triggers
Paragraphs and long-form text, form layouts, labels and helper text, modals and dialogs, dashboards and data containers, dense tables, any responsive layout that may render on wide or ultra-wide viewports.

## Directives
### 🟢 DO
* Cap reading text at 45–75 characters per line, ~66 ideal (e.g. `max-width: 65ch`), regardless of viewport width.
* Give every form a fixed content max-width; single-column fields sized to expected input length, never full-viewport inputs.
* Constrain page content in a centered max-width container; on ultra-wide screens spend surplus space on margins/whitespace, not on stretching elements.
* Let tables grow only as wide as their data needs; when space remains, keep columns at natural width instead of distributing leftover space evenly.

### 🔴 DON'T → INSTEAD
* **Don't:** let paragraphs, alerts, or empty-state text span 100% of a wide viewport. **Instead:** wrap them in a `max-width: 65ch` block and let surplus space become margin.
* **Don't:** stretch inputs, buttons, or cards to full width just because space exists. **Instead:** size each control to its content (a postal-code field stays short) and align them on a constrained grid.
* **Don't:** solve wide screens by inflating font sizes or padding until space is consumed. **Instead:** keep the type scale fixed, cap the container, and use added columns only when there is real content for them.

## Example
❌ `<main style="width:100%"><p>200-character lines spanning a 3440px monitor…</p><input style="width:100%"></main>`
✅ `<main style="max-width:72rem;margin:0 auto"><p style="max-width:65ch">Readable lines…</p><input class="w-content"></main>`

## Self-Reflection
* "If this renders on an ultra-wide monitor, does every text block stay at 45–75 characters per line and every container keep its intended width — with surplus space becoming whitespace, not stretch?"
