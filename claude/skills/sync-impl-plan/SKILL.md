---
name: sync-impl-plan
description: Mark completed features in the implementation plan and note new sub-tasks
argument-hint: [optional: feature name or plan file path]
allowed-tools: Read, Edit, Glob, Grep
---

# Sync Implementation Plan

Update the project's implementation plan to reflect work done in this session.

If `$ARGUMENTS` names a specific feature or provides a file path, focus there. Otherwise, infer from the conversation history what was completed.

## Process

1. Find the implementation plan file. Search for: `IMPLEMENTATION_PLAN.md`, `docs/IMPLEMENTATION_PLAN.md`, `PLAN.md`, or any file whose name suggests it tracks planned vs. completed work. If `$ARGUMENTS` is a file path, use that. If none is found, say so and stop.
2. Read it in full.
3. Based on the conversation history, identify which features, tasks, or items were completed in this session.
4. For each completed item:
   - Mark it done using the file's existing convention (checkbox, tag, heading prefix, etc.).
   - Do not change items that were not touched.
5. If the implementation revealed new sub-tasks, caveats, design constraints, or follow-up work not previously listed, add them under the relevant section in the file's existing style.
6. Do not restructure, rewrite, or reformat sections that were not affected.
