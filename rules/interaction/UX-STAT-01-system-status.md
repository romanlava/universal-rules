---
id: UX-STAT-01
title: Visibility of System Status
category: interaction
severity: mandatory
triggers: [async-operations, loading-states, forms, dashboards, file-uploads, background-jobs]
version: "5.0"
status: active
---

# [UX-STAT-01] Visibility of System Status

## Summary
Every user-triggered or background process must communicate its current state through timely, specific feedback. Interface silence reads as a crash and provokes destructive repeat actions (rage-clicks, duplicate submissions).

## Scientific Foundation
* **Theory:** Visibility of System Status (1st Usability Heuristic).
* **Key Authors:** Jakob Nielsen.
* **Core Concept:** Systems that continuously communicate their state build trust; an interface that goes silent implies failure, so users abandon or retry, often causing duplicate side effects.

## Triggers
Any operation exceeding ~1 second of perceived latency: form submissions, checkout payment processing, report or export generation, background jobs, provisioning or long-running setup tasks, dashboard data refresh, file uploads, heavy list or table rendering.

## Directives
### 🟢 DO
* Show an immediate acknowledgment (button pressed state, spinner, disabled + "Saving…") within 100 ms of any user command.
* For processes longer than 2–3 seconds, display a specific textual status, not a generic spinner (e.g. "Generating report: step 2 of 3…" or a percentage).
* Use skeleton loaders shaped like the incoming content while views wait on data retrieval.
* Confirm completion explicitly (success toast, updated timestamp, "Saved" state) so the user knows the cycle is closed.

### 🔴 DON'T → INSTEAD
* **Don't:** leave the interface visually frozen after a click with no acknowledgment. **Instead:** immediately switch the trigger control to a pending state and disable duplicate submission until the operation resolves.
* **Don't:** show a bare infinite spinner for long operations. **Instead:** show named stages or progress ("Uploading 3 of 12 files…") so the user can distinguish progress from a hang.
* **Don't:** replace the whole screen with a blank area while data loads. **Instead:** render skeleton placeholders matching the final layout.

## Example
❌ `<button>Submit</button>` → click → nothing changes for 8 s → user clicks 4 more times → duplicate orders
✅ `<button disabled>Processing payment…</button>` + progress note "Contacting payment provider (usually ~10 s)" → success toast "Order confirmed"

## Self-Reflection
* "At every second of this flow, can the user tell whether the system is frozen or actively processing their request?"
