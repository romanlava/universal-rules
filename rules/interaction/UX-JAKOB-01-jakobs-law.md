---
id: UX-JAKOB-01
title: Jakob's Law (Convention Over Invention)
category: interaction
severity: recommended
triggers: [navigation, forms, dashboards, tables, settings, checkout, onboarding]
version: "5.0"
status: active
---

# [UX-JAKOB-01] Jakob's Law (Convention Over Invention)

## Summary
Generated UI must reuse the interaction patterns users already know from the products they spend most of their time in; novelty in structure and controls is a cost, not a feature.

## Scientific Foundation
* **Theory:** Jakob's Law of Internet User Experience.
* **Key Authors:** Jakob Nielsen.
* **Core Concept:** Users form mental models from the aggregate of all other interfaces they use. Matching those established models reduces the learning curve of a new product to near zero; violating them forces relearning and increases error rates and abandonment.

## Triggers
Global navigation and menu structure; settings and profile areas; data-table controls (sort, filter, pagination); form layout and submission flow; checkout and multi-step wizards; dashboard layout; icon selection for common actions.

## Directives
### 🟢 DO
* Use established, widely recognized patterns: primary navigation in a left sidebar or top bar, gear icon for settings, magnifier for search, avatar menu for account, trash icon for delete.
* Place elements where convention expects them: logo top-left linking home, primary action bottom-right of a dialog, cancel beside it, breadcrumbs above content.
* Follow the dominant interaction grammar of the product category (e.g., a data table sorts by clicking column headers; a wizard advances with a clearly labeled "Next").
* Reserve genuine novelty for the product's core differentiating feature only, and support it with visible affordances.

### 🔴 DON'T → INSTEAD
* **Don't:** invent proprietary navigation paradigms (radial menus, hidden gesture-only navigation, unlabeled abstract icons). **Instead:** use a conventional sidebar/topbar with text labels and standard icons.
* **Don't:** relocate expected controls to surprising places (search in a footer, save hidden in a context menu). **Instead:** put each control where the majority of comparable products put it.
* **Don't:** rename universally understood actions with clever branded verbs ("Ignite" for submit, "Vault" for save). **Instead:** use plain conventional labels: Save, Submit, Delete, Cancel.
* **Don't:** design a common flow (login, checkout, settings) as an original experience. **Instead:** mirror the step order and layout users know from mainstream implementations of that flow.

## Example
❌ `<nav class="orbit-wheel">` — circular icon-only menu; settings opened by double-tapping the logo.
✅ `<aside class="sidebar"> <a>Dashboard</a> <a>Reports</a> <a>⚙ Settings</a> </aside>` — labeled left sidebar, gear for settings.

## Self-Reflection
* "Does this structure imitate what users already know from mainstream tools, or am I forcing them to learn a new navigation paradigm without a compelling reason?"
