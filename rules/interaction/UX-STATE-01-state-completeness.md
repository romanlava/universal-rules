---
id: UX-STATE-01
title: State Completeness (Beyond the Happy Path)
category: interaction
severity: mandatory
triggers: [tables, lists, dashboards, search, data-fetching, empty-states, loading, errors, first-use]
version: "5.1"
status: active
---

# [UX-STATE-01] State Completeness (Beyond the Happy Path)

## Summary
AI generation defaults to rendering only the populated happy path. Every data-bearing view must ship with all of its states designed: empty/first-use, loading, error, partial/degraded, success — and overflow ("too much data").

## Scientific Foundation
* **Theory:** UI as a finite state machine; defensive design and error-state research in usability heuristics (visibility of system status, help users recognize and recover).
* **Key Authors:** Jakob Nielsen (heuristics), Scott Hurff (UI stack of screen states).
* **Core Concept:** A screen is not one design but a set of states the same view passes through. Users meet the non-happy states first (empty on first run, loading on every run, error at the worst moment); leaving them undesigned means shipping the product's most common moments as accidents.

## Triggers
Any view that renders fetched or user-generated data: tables, lists, feeds, dashboards, search results, detail pages, charts; first-run screens; views backed by network calls or long-running jobs.

## Directives
### 🟢 DO
* Design and generate all states for every data-bearing view: empty/first-use, loading, error, partial/degraded, and success — in the same pass as the happy path.
* Treat the empty state as a first-run onboarding surface: explain what belongs here and offer one primary action to create or import it (see UX-REST-01).
* Give loading an honest, layout-stable indicator appropriate to its duration (see UX-ROBUST-02).
* Design errors with explanation and recovery, preserving any user input (see UX-ERR-01).
* For partial/degraded data (some sources failed, permissions limited), show what loaded and label what didn't — never render half-truth as complete.
* Treat "too much data" as a state: define the pagination or virtualization threshold and the controls that appear when it is crossed.

### 🔴 DON'T → INSTEAD
* **Don't:** generate a view whose empty state is an unstyled blank area or a bare "No data" string. **Instead:** render guidance ("No reports yet — create your first to see trends here") plus one primary action.
* **Don't:** ship only the populated mock and let loading/error fall through to layout jumps or console-only failures. **Instead:** generate explicit loading and error branches with stable layout (see UX-ROBUST-02, UX-ERR-01).
* **Don't:** render partially failed data as if complete, silently omitting broken sections. **Instead:** show loaded content and mark failed sections with an inline notice and retry.
* **Don't:** dump unbounded rows into the DOM assuming demo-sized data. **Instead:** paginate or virtualize past a defined threshold, with visible count and navigation.

## Example
❌ `<Table rows={data} /> — undefined data → blank div; first run → "No data"`
✅ `loading → skeleton; error → "Couldn't load reports" [Retry]; empty → "No reports yet" [＋ Create report]; >100 rows → paginated`

## Self-Reflection
* "For every data-bearing view I generated, can I point to its designed empty, loading, error, partial, and overflow states — or did I only render the populated happy path?"
