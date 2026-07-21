# Evaluation Rubric

## Routing

- The requested result is a visual artefact or frontend implementation; a non-visual Claude engineering task keeps its engineering contract.
- The `design` router classifies public/brand, product/task, audit/redesign, image-to-code, or design-system work before prompt composition.
- Independently testable non-design work receives a separate preparation or closure mission.

## Allocation

- Every requested visual-production action directly advances design judgement, visual/frontend implementation, or visual feedback.
- Test inspection or execution, typecheck, lint, builds, CI, backend/data/schema/API integration, formal audits, git-history mutation, push, deployment, and production proof are absent from visual production.
- The sole exception is a narrow local start/render check and frontend-only repair when the design edit itself breaks rendering.
- A preview broken on entry returns to preparation instead of consuming the design session.
- Previewing, rendering, screenshots, target viewports, reference comparison, and visual iteration remain in visual production when capabilities permit.

## Prompt quality

- Concrete design language follows the selected route and affects the visible result.
- Context is compact, non-redundant, and limited to this surface and its realistic states.
- Product meaning and working interactions are invariants, not a duplicate assurance programme.
- No arbitrary GPT character limit is applied.

## Collaboration and completion

- References are labelled approved source of truth or inspiration.
- One owner choice appears only when direction is materially open; the recommendation becomes the fallback if no response is available.
- Approved references skip exploration and prioritise fidelity.
- Completion means the visual artefact or required interface is created or implemented and visually inspected where tools permit.
- The handoff contains visual evidence, decisions, and deferred non-design issues, not command or assurance reports.
