# oh-my-qwen (OMQ)

<p align="center">
  <em>Multi-agent orchestration layer for Qwen Code CLI</em>
</p>

[![npm version](https://img.shields.io/npm/v/oh-my-qwen)](https://www.npmjs.com/package/oh-my-qwen)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Node.js](https://img.shields.io/badge/node-%3E%3D20-brightgreen)](https://nodejs.org)

**Forked from:** [oh-my-codex](https://github.com/Yeachan-Heo/oh-my-codex) by Yeachan Heo

**Installation Guides:** 
- [ðŸ‡¬ðŸ‡§ English](./INSTALL.md) 
- [ðŸ‡»ðŸ‡³ Tiáº¿ng Viá»‡t](./INSTALL.vi.md) 
- [ðŸ‡¨ðŸ‡³ ä¸­æ–‡](./INSTALL.zh.md)

**Docs:** [Getting Started](./docs/getting-started.html) Â· [Skills](./docs/skills.html) Â· [OpenCode & Cline Guide](./INSTALL-OPENCODE-CLINE.md) Â· [Migration](./MIGRATION_TO_QWEN.md)

OMQ is a workflow enhancement layer for [Qwen Code CLI](https://github.com/QwenLM/qwen-code).

It keeps Qwen Code as the execution engine and makes it easier to:
- âœ… Start a stronger Qwen Code session by default
- âœ… Reuse role/task invocations with `$name` keywords
- âœ… Invoke workflows with skills like `$plan`, `$ralph`, and `$team`
- âœ… Keep project guidance, plans, logs, and state in `.QMX/`

## Recommended default flow

If you want the default OMQ experience, start here:

```bash
npm install -g @anthropic/qwen-code oh-my-qwen
omq setup
omq --high
```

Then work normally inside Qwen Code:

```text
$architect "analyze the authentication flow"
$plan "ship this feature cleanly"
```

That is the main path.
Start QMX strongly, do the work in Codex, and let the agent pull in `$team` or other workflows only when the task actually needs them.

## What QMX is for

Use QMX if you already like Codex and want a better day-to-day runtime around it:
- reusable role/task invocations such as `$architect` and `$executor`
- reusable workflows such as `$plan`, `$ralph`, `$team`, and `$deep-interview`
- project guidance through scoped `AGENTS.md`
- durable state under `.QMX/` for plans, logs, memory, and mode tracking

If you want plain Codex with no extra workflow layer, you probably do not need QMX.

## Quick start

### Requirements

- Node.js 20+
- Codex CLI installed: `npm install -g @openai/codex`
- Codex auth configured
- `tmux` on macOS/Linux if you later want the durable team runtime
- `psmux` on native Windows if you later want Windows team mode

### A good first session

Launch QMX the recommended way:

```bash
QMX --madmax --high
```

Then try one role keyword and one workflow skill:

```text
$architect "analyze the authentication flow"
$plan "map the safest implementation path"
```

If the task grows, the agent can escalate to heavier workflows such as `$ralph` for persistent execution or `$team` for coordinated parallel work.

## A simple mental model

QMX does **not** replace Codex.

It adds a better working layer around it:
- **Codex** does the actual agent work
- **QMX role keywords** make useful roles reusable
- **QMX skills** make common workflows reusable
- **`.QMX/`** stores plans, logs, memory, and runtime state

Most users should think of QMX as **better task routing + better workflow + better runtime**, not as a command surface to operate manually all day.

## Start here if you are new

1. Run `QMX setup`
2. Launch with `QMX --madmax --high`
3. Ask for analysis with `$architect "..."`
4. Ask for planning with `$plan "..."`
5. Let the agent decide when `$ralph`, `$team`, or another workflow is worth using

## Common in-session surfaces

| Surface | Use it for |
| --- | --- |
| `$architect "..."` | analysis, boundaries, tradeoffs |
| `$executor "..."` | focused implementation work |
| `/skills` | browsing installed skills |
| `$plan "..."` | planning before implementation |
| `$ralph "..."` | persistent sequential execution |
| `$team "..."` | coordinated parallel execution when the task is big enough |

Use `$deep-interview` when the request is still vague, the boundaries are unclear, or you want QMX to keep pressing on intent, non-goals, and decision boundaries before it hands work off to `$plan`, `$ralph`, `$team`, or `$autopilot`.

Typical cases:
- vague greenfield ideas that still need sharper intent and scope
- brownfield changes where QMX should inspect the repo first, then ask cited confirmation questions
- requests where you want a one-question-at-a-time clarification loop instead of immediate planning or implementation
## Advanced / operator surfaces

These are useful, but they are not the main onboarding path.

### Team runtime

Use the team runtime when you specifically need durable tmux/worktree coordination, not as the default way to begin using QMX.

```bash
QMX team 3:executor "fix the failing tests with verification"
QMX team status <team-name>
QMX team resume <team-name>
QMX team shutdown <team-name>
```

### Setup, doctor, and HUD

These are operator/support surfaces:
- `QMX setup` installs prompts, skills, config, and AGENTS scaffolding
- `QMX doctor` verifies the install when something seems wrong
- `QMX hud --watch` is a monitoring/status surface, not the primary user workflow

### Explore and sparkshell

- `QMX explore --prompt "..."` is for read-only repository lookup
- `QMX sparkshell <command>` is for shell-native inspection and bounded verification

Examples:

```bash
QMX explore --prompt "find where team state is written"
QMX sparkshell git status
QMX sparkshell --tmux-pane %12 --tail-lines 400
```

### Platform notes for team mode

`QMX team` needs a tmux-compatible backend:

| Platform | Install |
| --- | --- |
| macOS | `brew install tmux` |
| Ubuntu/Debian | `sudo apt install tmux` |
| Fedora | `sudo dnf install tmux` |
| Arch | `sudo pacman -S tmux` |
| Windows | `winget install psmux` |
| Windows (WSL2) | `sudo apt install tmux` |

## Known issues

### Intel Mac: high `syspolicyd` / `trustd` CPU during startup

On some Intel Macs, QMX startup â€” especially with `--madmax --high` â€” can spike `syspolicyd` / `trustd` CPU usage while macOS Gatekeeper validates many concurrent process launches.

If this happens, try:
- `xattr -dr com.apple.quarantine $(which QMX)`
- adding your terminal app to the Developer Tools allowlist in macOS Security settings
- using lower concurrency (for example, avoid `--madmax --high`)

## Documentation

- [Getting Started](./docs/getting-started.html)
- [Demo guide](./DEMO.md)
- [Agent catalog](./docs/agents.html)
- [Skills reference](./docs/skills.html)
- [Integrations](./docs/integrations.html)
- [OpenClaw / notification gateway guide](./docs/openclaw-integration.md)
- [Contributing](./CONTRIBUTING.md)
- [Changelog](./CHANGELOG.md)

## Languages

- [English](./README.md)
- [í•œêµ­ì–´](./README.ko.md)
- [æ—¥æœ¬èªž](./README.ja.md)
- [ç®€ä½“ä¸­æ–‡](./README.zh.md)
- [ç¹é«”ä¸­æ–‡](./README.zh-TW.md)
- [Tiáº¿ng Viá»‡t](./README.vi.md)
- [EspaÃ±ol](./README.es.md)
- [PortuguÃªs](./README.pt.md)
- [Ð ÑƒÑÑÐºÐ¸Ð¹](./README.ru.md)
- [TÃ¼rkÃ§e](./README.tr.md)
- [Deutsch](./README.de.md)
- [FranÃ§ais](./README.fr.md)
- [Italiano](./README.it.md)

## Contributors

| Role | Name | GitHub |
| --- | --- | --- |
| Creator & Lead | Yeachan Heo | [@Yeachan-Heo](https://github.com/Yeachan-Heo) |
| Maintainer | HaD0Yun | [@HaD0Yun](https://github.com/HaD0Yun) |

## Star History

[![Star History Chart](https://api.star-history.com/svg?repos=Yeachan-Heo/oh-my-codex&type=date&legend=top-left)](https://www.star-history.com/#Yeachan-Heo/oh-my-codex&type=date&legend=top-left)

## License

MIT

