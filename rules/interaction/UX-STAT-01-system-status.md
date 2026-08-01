---
id: UX-STAT-01
title: Visibility of System Status
category: interaction
severity: mandatory
triggers: [async-operations, loading-states, forms, dashboards, file-uploads, background-jobs]
version: "5.1"
status: active
---

# [UX-STAT-01] Visibility of System Status

## Summary
Every user-triggered or background process must communicate its state through specific, honest feedback content: what is running, which stage it is at, and when it completed. This rule governs what the feedback says; all numeric timing budgets live in the latency ladder (see UX-ROBUST-02).

## Scientific Foundation
* **Theory:** Visibility of System Status (1st Usability Heuristic).
* **Key Authors:** Jakob Nielsen.
* **Core Concept:** Systems that continuously communicate their state build trust; an interface that goes silent implies failure, so users abandon or retry, often causing duplicate side effects.

## Triggers
Any operation exceeding ~1 second of perceived latency: form submissions, checkout payment processing, report or export generation, background jobs, provisioning or long-running setup tasks, dashboard data refresh, file uploads, heavy list or table rendering.

## Directives
### 🟢 DO
* Acknowledge every user command within the canonical latency budgets (see UX-ROBUST-02); this rule defines the content of that feedback.
* For long operations, display a specific textual status, not a generic spinner: named stages ("Generating report: step 2 of 3…") or measurable progress (percentage, "Uploading 3 of 12 files…").
* Disable the triggering control and block duplicate submission from the moment an operation starts until it resolves — canonical statement of this pattern.
* Confirm completion explicitly and where the action happened: scoped actions confirm at the triggering control (inline "Saved" state, updated timestamp); reserve global toasts for global events (see UX-LOC-01).
* While views wait on data, use skeleton loaders shaped like the incoming content — timing and layout rules (see UX-ROBUST-02).

### 🔴 DON'T → INSTEAD
* **Don't:** leave the interface visually frozen after a click with no acknowledgment. **Instead:** immediately switch the trigger control to a pending state and disable duplicate submission until the operation resolves.
* **Don't:** show a bare infinite spinner for long operations. **Instead:** show named stages or progress ("Uploading 3 of 12 files…") so the user can distinguish progress from a hang.
* **Don't:** announce a scoped action's success only via a detached global toast. **Instead:** confirm at the triggering control (inline "Saved", updated row state) and keep global toasts for global events (see UX-LOC-01).

## Example
❌ `<button>Submit</button>` → click → nothing changes for 8 s → user clicks 4 more times → duplicate orders
✅ `<button disabled>Processing payment…</button>` + "Contacting payment provider (usually ~10 s)" → button itself becomes "Order confirmed ✓" at the point of action

## Self-Reflection
* "At every moment of this flow, does the feedback say specifically what the system is doing, block duplicate submission, and confirm completion at the place the action was triggered?"
