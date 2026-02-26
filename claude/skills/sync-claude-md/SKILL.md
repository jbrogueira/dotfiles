---
name: sync-claude-md
description: Update CLAUDE.md to reflect changes made in this session
argument-hint: [optional: topic or feature to focus on]
allowed-tools: Bash, Read, Edit, Glob, Grep
---

# Sync CLAUDE.md

Update the project's `CLAUDE.md` to reflect what changed in this session.

If `$ARGUMENTS` is provided, focus the update on that feature or topic. Otherwise, infer scope from the conversation history and recent git changes.

## Process

1. Find `CLAUDE.md` in the current project root. If none exists, say so and stop.
2. Read it in full.
3. Run `git diff HEAD` to see what files changed. Read the changed source files that are relevant to the update.
4. Update only the sections of `CLAUDE.md` that are directly affected by what changed:
   - New methods or functions → add to the relevant section (Key Methods, etc.)
   - Changed signatures, behavior, or conventions → update the existing entries
   - New parameters, features, or model components → add to the feature list
   - Removed or renamed things → remove or update the relevant entries
5. Do not add entries for things already documented accurately. Do not modify sections unrelated to what changed. Do not add padding, summaries, or comments not present in the original style.
6. Preserve the existing formatting and section structure exactly.
