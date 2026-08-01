# Universal Design & UX Rules

A centralized rule base for UX/UI design, consumed by AI assistants (Claude Code and others).
One source of truth — pluggable into any project (CRM, SaaS, landing pages, mobile apps).

## Philosophy

**Maximal universality and high-levelness.** Rules describe laws and principles
(cognitive psychology, gestalt perception, behavioral economics, accessibility) —
never the pixels of a specific project. Everything project-specific lives in that
project's own CLAUDE.md.

## Structure

```
INDEX.md                  ← compact index: 1 line per rule (always loaded into context)
rules/
  00_META_FRAMEWORK.md    ← format and principles of the rule base
  _TEMPLATE.md            ← template for new rules
  cognition/              ← cognitive load, memory, choice
  behavior/               ← behavioral economics (loss aversion, goal-gradient, Pareto…)
  gestalt/                ← perception laws (similarity, closure, isolation…)
  interaction/            ← interaction patterns (errors, status, exits, accelerators)
  robustness/             ← resilience (Postel, Doherty, Tesler)
  data/                   ← data density, data-ink
  a11y/                   ← WCAG 2.2, COGA, inclusivity
  content/                ← language, microcopy, voice & tone
skills/ux-architect/      ← packaging as a Claude Code skill
docs/INTEGRATION.md       ← how to connect to a project (submodule / import / plugin)
docs/research/            ← source research and gap analyses
```

## Core mechanic: two-level loading

To keep context lean, only `INDEX.md` (~1 line per rule) is loaded into every project.
The AI opens the full text of a rule on demand, when a trigger from the index matches
the current task. Never inline the entire rule base into a system prompt.

## Connecting to a project

Briefly (details in [docs/INTEGRATION.md](docs/INTEGRATION.md)):

1. **Git submodule** (recommended): versioned link, works in CI.
2. **Absolute @import** from the project's CLAUDE.md: zero setup, instant updates,
   single machine only.
3. **Claude Code plugin**: install via marketplace, the skill auto-activates.

## Updating

Edits happen only here → commit → in consuming projects `git submodule update --remote`
(submodule setup) or nothing at all (absolute import).

* Rule IDs are immutable; an outdated rule gets `status: deprecated`, never deleted.
* Versioning: SemVer in [CHANGELOG.md](CHANGELOG.md). Major — format/structure changes,
  minor — new rules, patch — text fixes.
* On every release, bump `version` in `.claude-plugin/plugin.json` in lockstep —
  plugin users only receive updates when it changes. Full release checklist in
  [docs/INTEGRATION.md](docs/INTEGRATION.md).
