---
name: doc-audit
description: Launch an agent to audit all documentation for drift from the source code
argument-hint: [optional: specific doc file or topic to focus on]
allowed-tools: Read, Glob, Grep, Task
---

# Documentation Audit

Launch an Explore agent to check whether the project's documentation accurately reflects the current source code.

If `$ARGUMENTS` is provided, scope the audit to that file or topic. Otherwise, audit all documentation found in the project.

## Process

Use the Task tool to launch an Explore agent (subagent_type: "Explore", thoroughness: "very thorough") with the following prompt — substituting `$ARGUMENTS` where indicated:

---
You are auditing a software project's documentation for drift from the actual source code.

Focus: $ARGUMENTS (if empty, audit everything you find)

Steps:

1. Discover documentation: find CLAUDE.md, README.md, docs/**/*.md, calibration_plan.md, IMPLEMENTATION_PLAN.md, and any other .md files in the project root or docs/ directory.

2. Discover source files: identify the main source files (look at file extensions, directory structure, and imports). Read enough of them to understand the current API, conventions, and features.

3. For each documentation file, check:
   - Functions, methods, classes, or parameters listed — do they still exist with those names and signatures?
   - Conventions described — are they still followed in the code?
   - Features listed — are they implemented as described, or have they changed?
   - File paths, class names, config keys mentioned — are they still accurate?
   - Are there new features, parameters, or conventions in the code not yet reflected in docs?

4. Produce a structured report with these sections:
   - **Outdated entries**: documented things that no longer match the code (cite doc file + line, and the conflicting code location)
   - **Missing entries**: things present in the code that are not yet documented
   - **Plausible but unverified**: things you could not confidently check either way (explain why)

Be specific: cite file names and line numbers on both sides. Do not flag items you are uncertain about as definite problems. Prefer false negatives over false positives — only report issues you can support with evidence from the files.
---

When the agent finishes, summarize its findings and suggest which doc files need editing first.
