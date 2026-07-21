#!/usr/bin/env bash
set -euo pipefail

root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$root"

command -v rg >/dev/null 2>&1 || {
  printf 'validation requires ripgrep (rg)\n' >&2
  exit 1
}

required=(
  SKILL.md
  references/brief-patterns.md
  references/evaluation-rubric.md
  references/source-map.md
  agents/openai.yaml
  README.md
  CONTRIBUTING.md
  SECURITY.md
  LICENSE
)

for file_path in "${required[@]}"; do
  [[ -f "$file_path" ]] || { printf 'missing required file: %s\n' "$file_path" >&2; exit 1; }
done

[[ "$(sed -n '1p' SKILL.md)" == '---' ]] || { printf 'missing opening frontmatter delimiter\n' >&2; exit 1; }
[[ "$(sed -n '2p' SKILL.md)" == 'name: writing-claude-design-prompts' ]] || { printf 'invalid or unexpected skill name\n' >&2; exit 1; }
[[ "$(sed -n '3p' SKILL.md)" == description:\ Use\ when* ]] || { printf 'description must begin with "Use when"\n' >&2; exit 1; }
[[ "$(sed -n '4p' SKILL.md)" == '---' ]] || { printf 'missing closing frontmatter delimiter\n' >&2; exit 1; }

word_count="$(wc -w < SKILL.md | tr -d ' ')"
(( word_count <= 500 )) || { printf 'SKILL.md exceeds 500 words: %s\n' "$word_count" >&2; exit 1; }

rg -Fq '`references/brief-patterns.md`' SKILL.md || { printf 'SKILL.md does not route to brief patterns\n' >&2; exit 1; }
rg -Fq '`references/evaluation-rubric.md`' SKILL.md || { printf 'SKILL.md does not route to evaluation rubric\n' >&2; exit 1; }
rg -Fq '$writing-claude-design-prompts' agents/openai.yaml || { printf 'openai.yaml default prompt does not name the skill\n' >&2; exit 1; }
rg -Fq 'Do not request test inspection' SKILL.md || { printf 'test-inspection boundary is missing\n' >&2; exit 1; }
rg -Fq 'non-visual engineering task' SKILL.md || { printf 'non-visual routing guard is missing\n' >&2; exit 1; }

if find . -path ./.git -prune -o -type l -print | rg -q .; then
  printf 'repository payload must not contain symlinks\n' >&2
  exit 1
fi

if git ls-files | rg -i '(^|/)(work|outputs|evals|docs/superpowers)(/|$)'; then
  printf 'internal development artefact found in tracked paths\n' >&2
  exit 1
fi

if rg -n '/Users/|Documents/Codex|\.codex/memories|rollout_summaries' --glob '!scripts/validate.sh' .; then
  printf 'machine-local or internal provenance found\n' >&2
  exit 1
fi

if rg -n 'TBD|TODO|FILL[ _-]?ME|example\.com' --glob '!scripts/validate.sh' .; then
  printf 'placeholder text found\n' >&2
  exit 1
fi

printf 'Skill validation passed.\n'
