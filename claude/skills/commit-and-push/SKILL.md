---
name: commit-and-push
description: Commit staged/unstaged changes and push to remote
disable-model-invocation: true
allowed-tools: Bash(git *)
argument-hint: [commit-message]
---

# Commit and Push Changes

Commit all changes with the message "$ARGUMENTS" and push to the remote.

## Process

1. Stage all changes: `git add -A`
2. Commit with message: `git commit -m "$ARGUMENTS"`
3. Push to current branch: `git push origin HEAD`
4. Show `git log -1 --oneline` to confirm success
