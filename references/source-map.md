# Source Map

This skill combines official Claude prompting guidance with an empirically tested allocation rule for premium design-model sessions.

## Official sources

- [Claude prompting best practices](https://platform.claude.com/docs/en/build-with-claude/prompt-engineering/claude-prompting-best-practices) grounds the use of clear context, explicit constraints, structured prompts when useful, examples and model-appropriate instruction design.
- [Claude prompt-engineering overview](https://platform.claude.com/docs/en/build-with-claude/prompt-engineering/overview) grounds success criteria and evaluation before prompt optimisation.
- [Agent Skills specification](https://agentskills.io/specification) defines the portable `SKILL.md` package format and metadata constraints.

## Skill-specific synthesis

The official guidance is general. This skill adds a narrower resource-allocation contract for visual production:

- design-native work includes visual judgement, frontend implementation, rendering, screenshot comparison and iteration;
- independently testable engineering assurance belongs in preparation or closure missions;
- a visual production session may make only the narrow frontend repair needed when its own edit prevents rendering;
- approved visual references constrain direction, while inspiration may inform alternatives;
- non-visual Claude engineering work remains outside this skill.

These rules were developed through fresh-context baseline, regression, routing and adversarial review scenarios. The evaluation transcripts are intentionally excluded from the public package because they are development evidence, not runtime instructions.
