# Writing Claude Design Prompts

[![Validate](https://github.com/CodingCossack/writing-claude-design-prompts/actions/workflows/validate.yml/badge.svg)](https://github.com/CodingCossack/writing-claude-design-prompts/actions/workflows/validate.yml)
[![Agent Skill](https://img.shields.io/badge/Agent%20Skill-compatible-111827)](https://agentskills.io/)
[![MIT License](https://img.shields.io/badge/license-MIT-2563eb)](LICENSE)

An agent-agnostic Agent Skill for writing focused Claude Opus and Fable prompts for frontend design, UI/UX, visual redesigns, design systems, prototypes and image-to-code work.

It prevents premium design-model sessions from being consumed by test inspection, CI, build assurance, backend repair, deployment or production verification. The design model receives the visual problem: product truth, direction, composition, typography, colour, interaction, responsive states, implementation, rendering and screenshot iteration. Cheaper engineering agents can prepare the workspace and prove integration separately.

## Install

Install globally with the open [`skills`](https://github.com/vercel-labs/skills) CLI:

```sh
npx skills add CodingCossack/writing-claude-design-prompts -g -y
```

Install for selected agents:

```sh
npx skills add CodingCossack/writing-claude-design-prompts -g -y \
  -a codex -a claude-code -a gemini-cli -a opencode
```

The CLI detects Agent Skills-compatible clients including Codex, Claude Code, Gemini CLI, OpenCode, Cursor, GitHub Copilot CLI, Windsurf and others.

### Codex native installer

Ask Codex:

```text
$skill-installer install https://github.com/CodingCossack/writing-claude-design-prompts
```

Restart clients that do not reload skills dynamically.

### Manual installation

Clone once and symlink the checkout into each agent's global skill root:

```sh
git clone https://github.com/CodingCossack/writing-claude-design-prompts.git \
  ~/.local/share/agent-skills/writing-claude-design-prompts

ln -s ~/.local/share/agent-skills/writing-claude-design-prompts \
  ~/.agents/skills/writing-claude-design-prompts
```

Common global roots:

| Agent | Global skill directory |
|---|---|
| Codex CLI and app | `~/.codex/skills/` or `~/.agents/skills/` |
| Claude Code CLI and desktop app | `~/.claude/skills/` |
| Gemini CLI | `~/.gemini/skills/` |
| OpenCode | `~/.config/opencode/skills/` |

## Update

```sh
npx skills update writing-claude-design-prompts -g -y
```

## Use

The skill is designed to trigger automatically when an agent is asked to write or review a Claude/Fable prompt whose primary deliverable is visual.

```text
Use $writing-claude-design-prompts to turn these product notes into a Fable mission for redesigning and implementing the review workspace.
```

```text
Use $writing-claude-design-prompts to separate this mixed programme into preparation, Claude visual production and Codex engineering closure.
```

```text
Use $writing-claude-design-prompts to review this Opus frontend prompt and remove work that does not advance the visible result.
```

It does not intercept non-visual Claude engineering tasks. It also does not require every design prompt to hold a workshop: one owner choice is used only when the direction is materially open; otherwise the model chooses and implements.

## What it optimises

- Claude Opus and Fable prompt engineering for visual work.
- Frontend design, UI/UX, design systems, redesigns, prototypes and image-to-code.
- Concrete composition, typography, colour, material, density, imagery, motion and interaction language.
- Realistic states, responsive viewports, rendering, screenshot comparison and visual iteration.
- Clean division between premium visual production and lower-cost engineering assurance.
- Fidelity when screenshots, mock-ups or Figma frames are approved sources of truth.

## Mission allocation

| Mission | Owns |
|---|---|
| Preparation | Product truth, relevant files, working preview, representative data, screenshots, assets and constraints |
| Claude visual production | Direction, visual implementation, rendering, inspection, screenshots and iteration |
| Engineering closure | Tests, CI, builds, backend/data integration, formal audits, deployment and production proof |

## Structure

```text
.
├── SKILL.md
├── agents/openai.yaml
└── references/
    ├── brief-patterns.md
    ├── evaluation-rubric.md
    └── source-map.md
```

`SKILL.md` contains the routing and allocation contract. The brief patterns and evaluation rubric are loaded only when needed. The source map records the official guidance and the skill-specific synthesis.

## Source grounding

- [Claude prompting best practices](https://platform.claude.com/docs/en/build-with-claude/prompt-engineering/claude-prompting-best-practices)
- [Claude prompt-engineering overview](https://platform.claude.com/docs/en/build-with-claude/prompt-engineering/overview)
- [Agent Skills specification](https://agentskills.io/specification)

## Contributing

Issues and focused pull requests are welcome. See [CONTRIBUTING.md](CONTRIBUTING.md). Report security issues using [SECURITY.md](SECURITY.md).

## Licence

[MIT](LICENSE)
