# Writing Claude Design Prompts

[![Validate](https://github.com/CodingCossack/writing-claude-design-prompts/actions/workflows/validate.yml/badge.svg)](https://github.com/CodingCossack/writing-claude-design-prompts/actions/workflows/validate.yml)
[![Agent Skill](https://img.shields.io/badge/Agent%20Skill-compatible-111827)](https://agentskills.io/)
[![MIT License](https://img.shields.io/badge/license-MIT-2563eb)](LICENSE)

An agent-agnostic Agent Skill for turning product intent into visually literate Claude Opus and Fable commissions for frontend design, UI/UX, visual redesigns, design systems, prototypes and image-to-code work.

It uses the installed `design` skill for route-specific judgement, then expresses the result as a positive creative commission: the person, product truth, desired experience, visual direction, representative content and states, implementation, rendering and refinement. Unrelated engineering assurance remains outside the design commission without becoming a wall of prohibitions.

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
Use $writing-claude-design-prompts to turn these programme notes into a focused Fable design commission.
```

```text
Use $writing-claude-design-prompts to review this Opus frontend prompt and remove work that does not advance the visible result.
```

It does not intercept non-visual Claude engineering tasks. When the visual direction is open, it gives the design model enough context to choose a coherent direction and commit to it.

## What it optimises

- Claude Opus and Fable prompt engineering for visual work.
- Frontend design, UI/UX, design systems, redesigns, prototypes and image-to-code.
- Concrete composition, typography, colour, material, density, imagery, motion and interaction language.
- Realistic states, responsive viewports, rendering, screenshot comparison and visual iteration.
- Positive design direction rather than engineering-goal scaffolding or prohibition lists.
- Fidelity when screenshots, mock-ups or Figma frames are approved sources of truth.

## Structure

```text
.
├── SKILL.md
└── agents/openai.yaml
```

`SKILL.md` contains the complete commissioning guidance. Design doctrine remains in the separate `design` router and its route-specific resources.

## Contributing

Issues and focused pull requests are welcome. See [CONTRIBUTING.md](CONTRIBUTING.md). Report security issues using [SECURITY.md](SECURITY.md).

## Licence

[MIT](LICENSE)
