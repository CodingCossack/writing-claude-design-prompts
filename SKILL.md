---
name: writing-claude-design-prompts
description: Use when writing or reviewing prompts for Claude Opus, Fable, or another design-capable Claude model that will create a visual artefact, design system, frontend, redesign, prototype, or image-to-code result; especially when mixed mission packs risk spending the design session on engineering assurance.
---

# Writing Claude Design Prompts

## Principle

Commission visual judgement and implementation. Let surrounding engineering agents prepare technical truth and prove integration.

## Route before writing

Use this skill if the primary deliverable is visual. Do not use it merely because Claude, Opus, or Fable will perform a non-visual engineering task. If available, use `writing-gpt-5-6-prompts` for GPT-5.6 engineering or research prompts.

Use the installed `design` skill, if available, to classify the surface and select route-specific design judgement. Import its classification and visual principles, not its validation or release contract. If visual and non-visual work have independently testable acceptance contracts, split them.

For a mixed programme, write separate missions:

1. **Preparation** — a cheaper engineering agent establishes product truth, relevant files, working preview, screenshots, assets, and constraints.
2. **Visual production** — the design model chooses the visual direction, implements it, renders it, inspects it, and iterates.
3. **Engineering closure** — a cheaper engineering agent owns tests, CI, formal audits, backend/data integration, performance, deployment, and production proof.

“Production-ready” does not justify copying closure into visual production.

## Write the visual commission

Include only material that changes the design or its implementation:

- surface, user, workflow, and product truth;
- visual baseline, assets, references, and anti-references;
- composition, typography, colour/material, density, imagery, motion, and interaction;
- required surfaces, realistic content, visible states, and viewports;
- preserved product meaning, creative latitude, deliverable, and visual finish line.

Keep the prompt non-redundant; omit empty sections and context that does not affect this surface. Do not impose a GPT character cap. Use `references/brief-patterns.md` after routing.

## Working envelope

Visual production may inspect and edit presentation, styling, assets, frontend components, and interaction layers; run an available preview; render representative states and viewports; compare screenshots; and iterate. Preserve backend, data, schema, API, route, and external-system semantics. Use a new frontend asset or dependency only when directly required by the chosen visual result.

Its deliverable is the visual result, evidence, a short decision record, and deferred non-design issues. Do not request test inspection, automated assurance, command evidence, git-history mutation, push, deployment, release, or production checks.

If the preview is broken on entry, return that blocker to preparation. If the design edit breaks rendering, use only a narrow local start/render check and frontend-only repair to restore it, then resume visual iteration.

Label references as **approved source of truth** or **inspiration**. If direction is materially open and the owner is present, include one blocking choice between genuinely different directions. If no response is available, choose the recommended direction and implement. Do not create another planning loop. Approved references prioritise fidelity and skip exploration.

## Final check

Use `references/evaluation-rubric.md`. Return only the finished prompt or prompt pack unless the user asks for analysis.
