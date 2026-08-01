---
id: UX-FITT-01
title: Fitts's Law (Target Size & Reachability)
category: interaction
severity: mandatory
triggers: [buttons, touch-targets, icon-buttons, toolbars, navigation, mobile, destructive-actions, row-actions]
version: "5.1"
status: active
---

# [UX-FITT-01] Fitts's Law (Target Size & Reachability)

## Summary
The time to acquire a target is a function of the distance to it and its size. Every interactive element must be large enough, close enough, and safely separated from its neighbors to be hit quickly and without error.

## Scientific Foundation
* **Theory:** Fitts's Law; target-size accessibility criteria in the spirit of WCAG 2.5.5 / 2.5.8.
* **Key Authors:** Paul Fitts (1954).
* **Core Concept:** Movement time grows with the distance to a target and shrinks with its width. Small or distant targets slow every interaction and raise mis-tap rates; the effect compounds on touch screens, where the finger occludes the target. Distance is governed by UX-LOC-01 (see UX-LOC-01); this rule governs size, spacing, and reach.

## Triggers
Any clickable or tappable element: buttons, icon-only controls, links, checkboxes, row actions, close buttons, tab bars, pagination, drag handles; mobile layouts; toolbars mixing frequent and destructive actions.

## Directives
### 🟢 DO
* Give every touch target a minimum hit area of ~44×44 CSS px; pointer-only targets at least 24×24 px, with visible spacing between adjacent targets.
* Extend the hit area beyond the visual glyph: a 16 px icon gets an invisible padded click zone meeting the minimum, not a 16 px hotspot.
* Scale target size and prominence with frequency and importance — the most-used action on a screen is the easiest one to hit.
* Place primary actions within natural thumb reach on mobile (lower screen zone), not in hard-to-reach corners.
* Separate destructive actions from high-frequency targets by distance or an intermediate step — never directly adjacent (see UX-ERR-01).

### 🔴 DON'T → INSTEAD
* **Don't:** render an icon-only control whose clickable region equals its 16–20 px glyph. **Instead:** pad the interactive box to the 44 px (touch) / 24 px (pointer) minimum while keeping the glyph size.
* **Don't:** pack adjacent targets edge-to-edge so a near-miss triggers the neighbor. **Instead:** add explicit spacing (or non-interactive gutters) between targets so each has an exclusive hit zone.
* **Don't:** place "Delete" flush beside "Save" or another every-day action. **Instead:** move the destructive action apart — opposite side, overflow menu, or a separated zone — and guard it (see UX-ERR-01).
* **Don't:** put the primary mobile action in the top corner where the thumb cannot reach one-handed. **Instead:** anchor it in the bottom reach zone as a full-width or floating action.

## Example
❌ `[✎][🗑][＋] — three 18px icons, 0px apart, delete in the middle of the frequent actions`
✅ `[＋ Add] (44px, thumb zone) … [✎ Edit] (padded 44px zone) | overflow menu → [Delete…]`

## Self-Reflection
* "Can every interactive element on this screen be hit first-try by a thumb or an imprecise pointer, and is any destructive target physically separated from the frequent ones?"
