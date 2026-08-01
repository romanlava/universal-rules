---
id: UX-COGA-01
title: Clear Language (COGA Objective 3 & 5)
category: content
severity: mandatory
triggers: [forms, settings, consent-dialogs, notifications, dashboards, live-feeds, animations, onboarding]
version: "5.0"
status: active
---

# [UX-COGA-01] Clear Language (COGA Objective 3 & 5)

## Summary
All generated copy uses direct affirmative statements, and the interface protects the user's focus: no auto-refreshing blocks that shift layout during critical tasks, and all motion is user-controllable.

## Scientific Foundation
* **Theory:** W3C "Making Content Usable for People with Cognitive and Learning Disabilities" — Objective 3 (Use clear and understandable content) and Objective 5 (Help users focus); WCAG 2.2 SC 2.2.2 (Pause, Stop, Hide).
* **Key Authors:** W3C COGA Task Force; W3C Accessibility Guidelines Working Group.
* **Core Concept:** Parsing negations and nested clauses consumes working memory; interruptions and unexpected layout shifts destroy task focus entirely for users with attention or learning disabilities — and degrade everyone else. Clear affirmative language and a stable, user-paced screen are accessibility requirements, not style preferences.

## Triggers
Checkboxes and toggles in settings, consent, and subscription dialogs; confirmation prompts; any auto-updating region (live feeds, counters, prices, notifications) rendered near forms, checkout, or other critical tasks; carousels, banners, and auto-playing animations.

## Directives
### 🟢 DO
* Write every setting, checkbox, and confirmation as a direct affirmative statement describing what happens when it is on: "Email me weekly updates".
* Keep one idea per sentence; start action labels with a verb ("Save changes", "Delete file").
* Freeze layout during critical tasks: auto-updating blocks must not reflow or push content while the user fills a form or confirms an action. Buffer incoming items behind an explicit control ("Show 3 new updates") inside a fixed-size container.
* Make all motion user-controllable: honor `prefers-reduced-motion`, give every carousel or auto-playing region visible pause/stop controls, and never auto-advance steps or dismiss messages on a timer the user cannot stop.

### 🔴 DON'T → INSTEAD
* **Don't:** use double negatives or negated checkboxes ("Uncheck this box if you do not want to stop receiving emails"). **Instead:** one affirmative opt-in whose checked state means yes: "☐ Email me product updates".
* **Don't:** bury the action in nested conditions ("If you would rather not proceed without saving, do not close…"). **Instead:** state the outcome directly and offer plainly named actions: "Save your changes before closing? [Save] [Discard]".
* **Don't:** let a live region refresh itself and shift content mid-task. **Instead:** reserve fixed dimensions for the region and apply updates only when the user clicks "Show N new items".
* **Don't:** autoplay animations, carousels, or looping banners without controls. **Instead:** show a static first frame with an explicit play control, and wrap non-essential motion in a `prefers-reduced-motion: no-preference` media query.

## Example
❌ `☐ Uncheck if you do not wish to opt out of emails` + live ticker above the payment form pushing fields down every 5 s
✅ `☐ Email me weekly offers` + fixed-height panel with a [Show 2 new updates] button; feed applies updates only on click

## Self-Reflection
* "Is every statement affirmative and single-clause, and can anything on this screen move, refresh, or shift layout without the user asking it to?"
