# Changelog

## 5.0.0 — 2026-07-31

Initial release of the standalone rule repository.

* Migrated 14 rules from AI_Architect_UX_Rules v1.0; triggers universalized
  (project-specific scenarios removed), every DON'T paired with a positive INSTEAD
  pattern, YAML front-matter and compact ❌/✅ examples added.
* Authored 15 new rules closing the gaps from the 2026-07 UX research gap analysis:
  gestalt perception (similarity, closure, Prägnanz, uniform connectedness, Von Restorff),
  behavioral economy (goal-gradient, Pareto, Occam's razor, Parkinson's law),
  robustness (Postel's law, Doherty threshold, Tesler's law),
  accessibility (WCAG 2.2 interaction criteria, COGA clear language),
  content design and cognitive load decomposition.
* Two-level loading architecture: INDEX.md always in context, full rules on demand.
* Packaging: git submodule / CLAUDE.md @import / Claude Code plugin with ux-architect skill.
