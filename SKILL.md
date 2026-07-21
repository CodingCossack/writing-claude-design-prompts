---
name: writing-claude-design-prompts
description: Use when turning product notes, briefs, specifications, or mixed mission packs into prompts for Claude Opus, Fable, or another design-capable Claude model whose primary result is a visual artefact, frontend, redesign, prototype, design system, or image-to-code implementation.
---

# Writing Claude Design Prompts

Write a creative commission, not an engineering goal contract. Make the desired experience vivid enough for the model to exercise visual judgement, then leave it room to design.

Use the installed `design` skill to classify the surface and draw on the relevant design knowledge. Let that router own aesthetic and product-design judgement; this skill owns how the commission expresses it.

Centre the prompt on the person, their context and progress, the surface being created, and what the finished experience should make clear, useful, memorable, or satisfying. Ground it in the product's real content, important states, existing identity, assets, references, and constraints that materially affect the visible result. Distinguish a visual source that should be followed faithfully from one offered only as inspiration.

Translate vague aspirations into positive, observable direction. Describe the intended character through the relevant composition, hierarchy, typography, colour, material, density, imagery, motion, interaction, or responsive behaviour. Do not fill every category mechanically. Use only the language that sharpens this particular result. If direction is open, invite the model to choose a coherent direction and commit to it rather than forcing another planning exercise.

Commission the model to inspect the current surface when one exists, design and implement the result, render representative content, states, and viewports, then use what it sees to refine the work. Visual inspection, reference comparison, responsiveness, overflow, contrast, and interaction states are part of design completion.

Keep technical context that changes the visible behaviour, preserves product truth, or constrains feasible implementation. Let unrelated engineering assurance, backend work, CI, deployment, and release proof live in another mission; state this allocation briefly rather than turning the prompt into a prohibition list.

Write the finished prompt in natural language with only useful structure. Do not impose a GPT character limit or a fixed template. Return the prompt or prompt pack, not commentary about how it was written, unless the user asks for analysis.
