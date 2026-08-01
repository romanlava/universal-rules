# Meta-Framework: Universal Design & UX Rules (v5.0)

## Purpose
This repository is the single source of truth for UX/UI and architectural rules applied by AI assistants (Claude Code and others) across all projects. The AI must act as a strict system architect, not improvise subjective design choices.

## Prime Directive: Universality
Rules describe **laws and principles, never pixels or projects**.
* A rule must be applicable to any product: CRM, SaaS dashboard, landing page, mobile app.
* FORBIDDEN: project-specific scenarios, vendor names, market-specific constraints inside rules. INSTEAD: use generic domain examples (e.g. "a payment form", "a data-dense table").
* A rule that only makes sense in one product belongs in that product's own CLAUDE.md, not here.

## Two-Level Loading (context economy)
1. **INDEX.md** — one line per rule (id + when to apply). This is the only file loaded into every session's context.
2. **rules/<category>/<id>-<slug>.md** — full rule text. Loaded on demand when a trigger from the index matches the current task.

Never inline the full rule base into a system prompt or CLAUDE.md. When assembling several rules into a single prompt, wrap each rule in an XML tag named after its id (e.g. `<UX-ERR-01>…</UX-ERR-01>`) to prevent context bleed.

## Mandatory Rule Structure
Every rule file MUST follow `_TEMPLATE.md`:

1. **YAML front-matter** — `id`, `title`, `category`, `severity`, `triggers`, `version`, `status`.
2. **Summary** — 1–2 sentences of operational impact.
3. **Scientific Foundation** — theory and key authors validating the rule.
4. **Triggers** — generic scenarios/components that activate the rule.
5. **Directives** — binary constraints:
   * 🟢 **DO** — patterns that must be generated.
   * 🔴 **DON'T → INSTEAD** — every prohibition MUST state its positive replacement pattern. LLMs handle negative constraints poorly; a bare "don't" increases the probability of generating the forbidden pattern.
6. **Example** — one compact contrast pair (❌ wrong / ✅ right). Keep it short; this is a hint, not a component library.
7. **Self-Reflection** — one checklist question for the AI's internal validation loop before final output.

## Style Constraints
* Rules are written in English (denser and less ambiguous for LLM consumption). Human-facing docs (README, integration guide) are in Russian.
* Target length: under ~70 lines per rule. High-level and universal beats exhaustive and specific.
* Rule IDs are immutable. Superseded rules get `status: deprecated`, never deleted or renumbered.

## Known Law Conflicts (resolved)
When rules collide, these resolutions apply:
* **Data-Ink vs. scanability**: strip decoration by default; when a table exceeds the cognitive scanning threshold (~10+ columns), reintroduce ultra-thin row separators or row-hover highlight. See UX-TUFTE-01.
* **Sticky headers vs. keyboard focus (WCAG 2.4.11)**: sticky positioning requires `scroll-margin-top` on all focusable containers. See UX-A11Y-02.
* **Optimistic UI vs. trust**: optimistic updates only for reversible, low-risk micro-interactions; destructive or financial actions always show honest system status. See UX-ROBUST-02.
* **Von Restorff vs. accent blindness**: maximum one primary CTA per screen area. See UX-REST-01.
