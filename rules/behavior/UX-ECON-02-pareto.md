---
id: UX-ECON-02
title: Pareto Principle (80/20)
category: behavior
severity: recommended
triggers: [dashboards, toolbars, dense-tables, page-headers, settings, navigation, action-menus]
version: "5.0"
status: active
---

# [UX-ECON-02] Pareto Principle (80/20)

## Summary
Roughly 80% of user activity concentrates on 20% of interface elements. The dominant user path must receive absolute visual priority on every screen; secondary and rare actions are demoted into an overflow ("More actions") menu or nested panels.

## Scientific Foundation
* **Theory:** Pareto Principle (the "vital few and trivial many").
* **Key Authors:** Vilfredo Pareto; Joseph M. Juran.
* **Core Concept:** Usage frequency across features follows a power-law distribution, not a uniform one. Giving equal visual weight to all actions forces users to scan the trivial many to find the vital few, inflating decision time (Hick's Law) and visual noise. Ranking elements by expected use restores proportionality between prominence and demand.

## Triggers
Dashboards, page headers with multiple actions, toolbars, row actions in dense tables, navigation menus, settings screens, list/detail views, any screen offering more than three actions of unequal importance.

## Directives
### 🟢 DO
* Identify the single most probable user action per screen area and give it the strongest visual treatment (primary button, first position, largest target).
* Group infrequent, repeated, or destructive actions (duplicate, export, archive, delete) into one standardized overflow menu ("More actions" / ⋯).
* Order navigation and menu items by expected frequency of use, not alphabetically or by internal org structure.
* Let the dominant path also drive layout: the primary workflow gets the widest region and the top of the visual hierarchy.

### 🔴 DON'T → INSTEAD
* **Don't:** render five equally styled buttons in a header or table row. **Instead:** one primary action, at most one secondary, everything else inside a single overflow menu.
* **Don't:** give marginal settings the same screen real estate as core workflows. **Instead:** keep the core workflow on the surface and nest rare settings behind an "Advanced" disclosure.
* **Don't:** distribute visual weight evenly "to be safe". **Instead:** rank actions by expected use and make prominence proportional to that rank.

## Example
❌ `Header: [Save] [Duplicate] [Export] [Archive] [Delete] — five identical buttons`
✅ `Header: [Save] (primary) · [⋯ More actions ▾ → Duplicate / Export / Archive / Delete]`

## Self-Reflection
* "Can I name the one action most users came here to perform — and is it the unmistakable visual winner while everything else is demoted or foldered?"
