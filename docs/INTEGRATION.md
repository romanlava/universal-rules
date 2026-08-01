# Connecting the rule base to a project

Three options, from recommended to exotic. In every case only `INDEX.md` enters the
project's context; the AI reads full rules on demand.

## Option A — Git submodule (recommended)

A versioned link: the project pins a specific commit of the rule base,
updates are explicit and reversible. Works in CI and on any machine.

Setup (CRM example):

```bash
cd ~/Projects/CRM
git submodule add https://github.com/romanlava/universal-rules.git design-rules
```

Add this block to the project's `CLAUDE.md`:

```markdown
## Design & UX Rules
@design-rules/INDEX.md
Before generating or reviewing any UI: match the task against the index triggers
and read the full versions of matching rules from design-rules/rules/.
```

Updating to the latest rules:

```bash
git submodule update --remote design-rules
git add design-rules && git commit -m "chore: bump design rules"
```

Cloning the project on a new machine: `git clone --recurse-submodules <crm-url>`.

**Pros:** the rules version is pinned in project history; can roll back; CI sees the rules.
**Cons:** the usual submodule routine (remember `--recurse-submodules`).

## Option B — Absolute @import (quick start, single machine)

Nothing to install: the project simply references a local clone.

In the project's `CLAUDE.md`:

```markdown
## Design & UX Rules
@~/Projects/Universal Rules/INDEX.md
Before generating or reviewing any UI: match the task against the index triggers
and read the full versions of matching rules from ~/Projects/Universal Rules/rules/.
```

**Pros:** zero setup, edits to the base are visible in all projects instantly.
**Cons:** does not work for teammates/CI (local path); no version pinning —
changing the base silently changes the behavior of every project.

## Option C — Claude Code plugin

The repository already contains `.claude-plugin/` (manifest + marketplace) and the
`ux-architect` skill. Install:

```bash
claude plugin marketplace add romanlava/universal-rules
```

then `/plugin install universal-design-rules` in an interactive session.
The skill auto-activates on UI tasks in every project.

**Pros:** the most native way for Claude Code; the skill knows when to engage.
**Cons:** updates go through plugin update/reinstall; slightly more moving parts.

## Which to choose

* Solo development on one machine, want instant updates → **B**.
* Project lives in CI, multiple machines, or a team → **A**.
* Many projects and you want auto-activation without editing each CLAUDE.md → **C**.

The options are compatible: start with B and move to A later without changing the base.

## Separation rule

Only universal content belongs in this repository. Project specifics — brand colors,
concrete components, domain terms of a CRM — stay in the project's CLAUDE.md. If a rule
only makes sense "for this one product", it does not belong here.
