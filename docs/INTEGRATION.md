# Connecting the rule base to a project

Three options, from recommended to exotic. In every case only `INDEX.md` enters the
project's context; the AI reads full rules on demand.

> **Private repository.** `github.com/romanlava/universal-rules` is private. Every
> option below therefore requires read access to it: on your own machine the `gh` /
> git credential helper covers this; on CI or teammates' machines use an SSH deploy
> key or an HTTPS personal access token. Without access, submodule clone and
> marketplace add both fail.

## Option A — Git submodule (recommended)

A versioned link: the project pins a specific commit of the rule base,
updates are explicit and reversible. Works anywhere that has read access to the repo.

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

Cloning the project on a new machine: `git clone --recurse-submodules <crm-url>`
(or `git submodule update --init` after a plain clone).

**Pros:** the rules version is pinned in project history; can roll back; CI sees the rules.
**Cons:** the usual submodule routine (remember `--recurse-submodules`).

## Option B — Absolute @import (quick start, single machine)

Nothing to install: the project simply references a local clone.

In the project's `CLAUDE.md`:

```markdown
## Design & UX Rules
@~/Projects/Universal\ Rules/INDEX.md
Before generating or reviewing any UI: match the task against the index triggers
and read the full versions of matching rules from ~/Projects/Universal Rules/rules/.
```

Two caveats:

* **Spaces in the path break @import silently** — escape them (`Universal\ Rules`) or,
  more robustly, create a space-free symlink once and import through it:

  ```bash
  ln -s ~/Projects/Universal\ Rules ~/.claude/universal-rules
  ```

  then use `@~/.claude/universal-rules/INDEX.md`.
* Because the import points outside the project directory, Claude Code shows a
  one-time approval dialog per project; if declined, the import stays silently
  disabled. Verify with `/context` (look under "Memory files") that INDEX.md
  actually loaded.

**Pros:** zero setup, edits to the base are visible in all projects instantly.
**Cons:** does not work for teammates/CI (local path); no version pinning —
changing the base silently changes the behavior of every project.

## Option C — Claude Code plugin

The repository already contains `.claude-plugin/` (manifest + marketplace) and the
`ux-architect` skill. Install:

```bash
claude plugin marketplace add romanlava/universal-rules
```

then `/plugin install universal-design-rules@universal-rules` in an interactive
session. The skill auto-activates on UI tasks in every project.

Notes:

* Add the marketplace via `owner/repo` or a git URL (not a raw URL to
  marketplace.json — relative `"source": "./"` does not resolve for URL-only
  marketplaces).
* **Updates are keyed to the `version` field in `.claude-plugin/plugin.json`** —
  installed copies are cached per version, so users only receive changes after that
  version is bumped. To pull an update: `/plugin marketplace update universal-rules`,
  then `claude plugin update universal-design-rules`.

**Pros:** the most native way for Claude Code; the skill knows when to engage.
**Cons:** updates require a version bump + plugin update; slightly more moving parts.

## Which to choose

* Solo development on one machine, want instant updates → **B**.
* Project lives in CI, multiple machines, or a team → **A**.
* Many projects and you want auto-activation without editing each CLAUDE.md → **C**.

The options are compatible: start with B and move to A later without changing the base.

## Release checklist (maintainer)

1. Edit the rule files.
2. Set the `version` field in the front-matter of every rule you touched to the release
   version (e.g. `version: "5.3"`), so a rule's own header states which release it last
   changed in.
3. Update `INDEX.md` if rules were added, renamed, or deprecated. A new rule without an
   index row can never be loaded under two-level loading; a deprecated rule left in the
   index keeps being loaded. Deprecated rules are excluded from the index but never
   deleted from `rules/`. Verify every link in the index resolves before committing.
4. Update `CHANGELOG.md` (SemVer): new rules and behavioral changes to existing rules
   are minor; a corrected directive that reverses previous guidance belongs in the notes
   even when the version bump is small.
5. Bump `version` in `.claude-plugin/plugin.json` in lockstep with the changelog entry.
6. Commit + push.
7. In consuming projects: `git submodule update --remote design-rules` (Option A) or
   plugin update (Option C); Option B needs nothing.

## Separation rule

Only universal content belongs in this repository. Project specifics — brand colors,
concrete components, domain terms of a CRM — stay in the project's CLAUDE.md. If a rule
only makes sense "for this one product", it does not belong here.
