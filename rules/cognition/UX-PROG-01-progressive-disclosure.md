---
id: UX-PROG-01
title: Progressive Disclosure
category: cognition
severity: mandatory
triggers: [settings, configurators, dashboards, filters, forms, wizards, advanced-options]
version: "5.1"
status: active
---

# [UX-PROG-01] Progressive Disclosure

## Summary
Show only the most relevant controls and data by default; defer advanced or secondary options to explicitly requested secondary views. The default screen carries the primary task, nothing more.

## Scientific Foundation
* **Theory:** Progressive Disclosure.
* **Key Authors:** John M. Carroll (minimalist instruction / training-wheels interface, 1984); Jakob Nielsen (canonical UX formulation of progressive disclosure).
* **Core Concept:** Deferring advanced features reduces initial cognitive load for novice, fast-path use (System 1) while still accommodating power users (System 2) who explicitly request depth. Every visible control is a cost paid by every user on every visit.

## Triggers
Settings and configuration screens, complex configurators, analytics dashboards with many filters, long forms, multi-step wizards, search/filter panels, any screen where optional parameters outnumber essential ones.

## Directives
### 🟢 DO
* Show only the 5–7 parameters critical to the primary task on the default view (e.g. status, primary identifier, the main action).
* Place advanced settings behind a clearly labeled "Advanced" accordion, toggle, or secondary tab that reveals them on demand.
* Order disclosure by frequency of use: common first and visible, rare last and collapsed.
* Keep hidden options discoverable: the disclosure control must be visible, labeled, and indicate that more exists (chevron, count badge).

### 🔴 DON'T → INSTEAD
* **Don't:** render every possible filter, field, and column on initial load. **Instead:** show the essential subset and collapse the rest under "Advanced" or "More filters (12)".
* **Don't:** bury the *primary* action or required fields inside collapsed sections. **Instead:** keep everything needed to complete the main task visible by default; hide only optional depth.
* **Don't:** scatter advanced options across multiple unlabeled expanders the user must hunt through. **Instead:** group them under one predictable, named disclosure point per screen area.
* **Don't:** reset or lose values a user entered in a disclosed section when it collapses. **Instead:** persist the state and summarize it on the collapsed header ("3 filters active").

## Example
❌ `Settings page: 40 fields, 12 toggles, 6 dropdowns rendered at once on first load.`
✅ `Settings: Name, Status, Primary ID, [Save]  ·  ▸ Advanced settings (collapsed, 14 options)`

## Self-Reflection
* "Can the primary task on this screen be completed without seeing half of these fields? If yes, are those fields collapsed behind a labeled, discoverable disclosure?"
