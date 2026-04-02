# oh-my-qwen (QMX)

[![npm version](https://img.shields.io/npm/v/oh-my-qwen)](https://www.npmjs.com/package/oh-my-qwen)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Node.js](https://img.shields.io/badge/node-%3E%3D20-brightgreen)](https://nodejs.org)
[![Discord](https://img.shields.io/discord/1452487457085063218?color=5865F2&logo=discord&logoColor=white&label=Discord)](https://discord.gg/PUwSMR9XNk)

**Website:** https://yeachan-heo.github.io/oh-my-codex-website/  
**Docs:** [Getting Started](./docs/getting-started.html) · [Agents](./docs/agents.html) · [Skills](./docs/skills.html) · [Integrations](./docs/integrations.html) · [Demo](./DEMO.md)

**Forked from:** [oh-my-codex](https://github.com/Yeachan-Heo/oh-my-codex) by Yeachan Heo

QMX is a workflow enhancement layer for [Qwen Code CLI](https://github.com/QwenLM/qwen-code).

It keeps Qwen Code as the execution engine and makes it easier to:
- start a stronger Qwen Code session by default
- reuse good role/task invocations with `$name` keywords
- invoke workflows with skills like `$plan`, `$ralph`, and `$team`
- keep project guidance, plans, logs, and state in `.qmx/`

## Recommended default flow

If you want the default QMX experience, start here:

```bash
npm install -g @anthropic/qwen-code oh-my-qwen
qmx setup
qmx --madmax --high
```

Then work normally inside Qwen Code:

```text
$architect "analyze the authentication flow"
$plan "ship this feature cleanly"
```

That is the main path.
Start QMX strongly, do the work in Qwen Code, and let the agent pull in `$team` or other workflows only when the task actually needs them.

## What QMX is for

Use QMX if you already like Qwen Code and want a better day-to-day runtime around it:
- reusable role/task invocations such as `$architect` and `$executor`
- reusable workflows such as `$plan`, `$ralph`, `$team`, and `$deep-interview`
- project guidance through scoped `AGENTS.md`
- durable state under `.qmx/` for plans, logs, memory, and mode tracking

If you want plain Qwen Code with no extra workflow layer, you probably do not need QMX.

## Quick start

### Requirements

- Node.js 20+
- Qwen Code CLI installed: `npm install -g @anthropic/qwen-code`
- Qwen auth configured
- `tmux` on macOS/Linux if you later want the durable team runtime
- `psmux` on native Windows if you later want Windows team mode

### A good first session

Launch QMX the recommended way:

```bash
qmx --madmax --high
```

Then try one role keyword and one workflow skill:

```text
$architect "analyze the authentication flow"
$plan "map the safest implementation path"
```

If the task grows, the agent can escalate to heavier workflows such as `$ralph` for persistent execution or `$team` for coordinated parallel work.

## A simple mental model

QMX does **not** replace Qwen Code.

It adds a better working layer around it:
- **Qwen Code** does the actual agent work
- **QMX role keywords** make useful roles reusable
- **QMX skills** make common workflows reusable
- **`.qmx/`** stores plans, logs, memory, and runtime state

Most users should think of QMX as **better task routing + better workflow + better runtime**, not as a command surface to operate manually all day.

## Start here if you are new

1. Run `qmx setup`
2. Launch with `qmx --madmax --high`
3. Ask for analysis with `$architect "..."`
4. Ask for planning with `$plan "..."`
5. Let the agent decide when `$ralph`, `$team`, or another workflow is worth using

## Common in-session surfaces

| Surface | Use it for |
|---------|------------|
| `$architect "..."` | analysis, boundaries, tradeoffs |
| `$executor "..."` | focused implementation work |
| `/skills` | browsing installed skills |
| `$plan "..."` | planning before implementation |
| `$ralph "..."` | persistent sequential execution |
| `$team "..."` | coordinated parallel execution when the task is big enough |

Use `$deep-interview` when the request is still vague, the boundaries are unclear, or you want QMX to keep pressing on intent, non-goals, and decision boundaries before it hands work off to `$plan`, `$ralph`, `$team`, or `$autopilot`.

## Advanced / operator surfaces

These are useful, but they are not the main onboarding path.

### Team runtime

```bash
qmx team 3:executor "fix the failing tests with verification"
qmx team status <team-name>
qmx team resume <team-name>
qmx team shutdown <team-name>
```

### Setup, doctor, and HUD

- `qmx setup` installs prompts, skills, config, and AGENTS scaffolding
- `qmx doctor` verifies the install when something seems wrong
- `qmx hud --watch` is a monitoring/status surface, not the primary user workflow

### Explore and sparkshell

- `qmx explore --prompt "..."` is for read-only repository lookup
- `qmx sparkshell <command>` is for shell-native inspection and bounded verification

Examples:
```bash
qmx explore --prompt "find where team state is written"
qmx sparkshell git status
qmx sparkshell --tmux-pane %12 --tail-lines 400
```

## Platform notes for team mode

`qmx team` needs a tmux-compatible backend:

| Platform | Install |
|----------|---------|
| macOS | `brew install tmux` |
| Ubuntu/Debian | `sudo apt install tmux` |
| Fedora | `sudo dnf install tmux` |
| Arch | `sudo pacman -S tmux` |
| Windows | `winget install psmux` |
| Windows (WSL2) | `sudo apt install tmux` |

## Documentation

- [Getting Started](./docs/getting-started.html)
- [Demo guide](./DEMO.md)
- [Agent catalog](./docs/agents.html)
- [Skills reference](./docs/skills.html)
- [Integrations](./docs/integrations.html)
- [Contributing](./CONTRIBUTING.md)
- [Changelog](./CHANGELOG.md)

## Languages

- [English](README.md)
- [한국어](README.ko.md)
- [日本語](README.ja.md)
- [简体中文](README.zh.md)
- [繁體中文](README.zh-TW.md)
- [Tiếng Việt](README.vi.md)
- [Español](README.es.md)
- [Português](README.pt.md)
- [Русский](README.ru.md)
- [Türkçe](README.tr.md)
- [Deutsch](README.de.md)
- [Français](README.fr.md)
- [Italiano](README.it.md)

## License

MIT
