---
id: UX-GEST-04
title: Uniform Connectedness
category: gestalt
severity: mandatory
triggers: [wizards, checkout, onboarding, progress-indicators, flows, timelines]
version: "5.0"
status: active
---

# [UX-GEST-04] Uniform Connectedness

## Summary
Elements physically connected by lines, arrows, or a shared enclosing region are perceived as more related than elements that are merely near each other. Multi-step flows and dependent items must render their dependency with an explicit visual connector, not proximity alone.

## Scientific Foundation
* **Theory:** Uniform Connectedness — connectedness overrides proximity and similarity as a grouping cue.
* **Key Authors:** Stephen Palmer & Irvin Rock ("Rethinking perceptual organization", 1994).
* **Core Concept:** A drawn connection (line, arrow, common enclosure) is the strongest grouping signal available. Without it, users read sequential or dependent elements as independent islands, cannot infer order or causality, and lose track of position within a process.

## Triggers
* Multi-step processes: wizards, checkout flows, onboarding sequences, setup guides.
* Progress indicators, steppers, timelines, status pipelines.
* Dependent controls: a field enabled by a toggle, sub-options of a parent choice, branching decision paths.

## Directives
### 🟢 DO
* Render every stepper/progress indicator as connected nodes: step markers joined by a continuous line, with the completed segment visually filled to show traversal.
* Mark direction of dependency explicitly (connector line, arrow, or shared enclosure), so order is visible before any label is read.
* Bind dependent controls to their parent with a physical link: indent plus a connector line, or a shared background region enclosing parent and children.
* Keep one connector style per flow (same thickness, color role, node shape) so the chain itself obeys UX-GEST-01.

### 🔴 DON'T → INSTEAD
* **Don't:** render wizard steps as detached labels or floating dots relying on proximity ("1  2  3"). **Instead:** join steps with a connector line and fill it up to the current step, making sequence and progress one continuous figure.
* **Don't:** show a child option merely indented under its parent toggle. **Instead:** enclose parent and child in one shared background region or draw a connector, so the dependency is physically visible.
* **Don't:** express branching logic only in prose ("if X, then step 4 is skipped"). **Instead:** draw the branch: connector paths that visibly split and rejoin, or a skipped node rendered in a disabled state on the same line.

## Example
❌ `Step 1   Step 2   Step 3` — three unrelated labels; current position and order are guesswork.
✅ `[●]━━━[●]━━━[○]  Details → Payment → Review` — nodes joined by a line, filled to the current step.

## Self-Reflection
* "For every sequence or dependency on this screen: is the relationship drawn (line, arrow, shared region) rather than implied by mere adjacency?"
