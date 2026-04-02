# oh-my-qwen (QMX)

<p align="center">
  <img src="https://yeachan-heo.github.io/oh-my-qwen-website/QMX-character-nobg.png" alt="oh-my-qwen character" width="280">
  <br>
  <em>Ð’Ð°Ñˆ codex Ð½Ðµ Ð¾Ð´Ð¸Ð½Ð¾Ðº.</em>
</p>

[![npm version](https://img.shields.io/npm/v/oh-my-qwen)](https://www.npmjs.com/package/oh-my-qwen)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Node.js](https://img.shields.io/badge/node-%3E%3D20-brightgreen)](https://nodejs.org)

> **[Website](https://yeachan-heo.github.io/oh-my-qwen-website/)** | **[Documentation](https://yeachan-heo.github.io/oh-my-qwen-website/docs.html)** | **[CLI Reference](https://yeachan-heo.github.io/oh-my-qwen-website/docs.html#cli-reference)** | **[Workflows](https://yeachan-heo.github.io/oh-my-qwen-website/docs.html#workflows)** | **[Ð ÑƒÐºÐ¾Ð²Ð¾Ð´ÑÑ‚Ð²Ð¾ Ð¿Ð¾ Ð¸Ð½Ñ‚ÐµÐ³Ñ€Ð°Ñ†Ð¸Ð¸ OpenClaw](./docs/openclaw-integration.ru.md)** | **[GitHub](https://github.com/Yeachan-Heo/oh-my-qwen)** | **[npm](https://www.npmjs.com/package/oh-my-qwen)**

Ð¡Ð»Ð¾Ð¹ Ð¼ÑƒÐ»ÑŒÑ‚Ð¸Ð°Ð³ÐµÐ½Ñ‚Ð½Ð¾Ð¹ Ð¾Ñ€ÐºÐµÑÑ‚Ñ€Ð°Ñ†Ð¸Ð¸ Ð´Ð»Ñ [OpenAI Qwen Code CLI](https://github.com/openai/codex).

## Ð§Ñ‚Ð¾ Ð½Ð¾Ð²Ð¾Ð³Ð¾ Ð² v0.9.0 â€” Spark Initiative

Spark Initiative â€” ÑÑ‚Ð¾ Ñ€ÐµÐ»Ð¸Ð·, ÑƒÑÐ¸Ð»Ð¸Ð²Ð°ÑŽÑ‰Ð¸Ð¹ Ð½Ð°Ñ‚Ð¸Ð²Ð½Ñ‹Ð¹ Ð¿ÑƒÑ‚ÑŒ Ð¸ÑÑÐ»ÐµÐ´Ð¾Ð²Ð°Ð½Ð¸Ñ Ð¸ Ð¸Ð½ÑÐ¿ÐµÐºÑ†Ð¸Ð¸ Ð² QMX.

- **ÐÐ°Ñ‚Ð¸Ð²Ð½Ñ‹Ð¹ harness Ð´Ð»Ñ `QMX explore`** â€” ÑƒÑÐºÐ¾Ñ€ÑÐµÑ‚ Ð¸ ÑƒÐ¶ÐµÑÑ‚Ð¾Ñ‡Ð°ÐµÑ‚ read-only Ð¸ÑÑÐ»ÐµÐ´Ð¾Ð²Ð°Ð½Ð¸Ðµ Ñ€ÐµÐ¿Ð¾Ð·Ð¸Ñ‚Ð¾Ñ€Ð¸Ñ Ñ‡ÐµÑ€ÐµÐ· Rust-Ð¿ÑƒÑ‚ÑŒ.
- **`QMX sparkshell`** â€” Ð½Ð°Ñ‚Ð¸Ð²Ð½Ð°Ñ Ð¾Ð¿ÐµÑ€Ð°Ñ‚Ð¾Ñ€ÑÐºÐ°Ñ Ð¿Ð¾Ð²ÐµÑ€Ñ…Ð½Ð¾ÑÑ‚ÑŒ Ð´Ð»Ñ Ð¸Ð½ÑÐ¿ÐµÐºÑ†Ð¸Ð¸ Ñ ÐºÑ€Ð°Ñ‚ÐºÐ¸Ð¼Ð¸ ÑÐ²Ð¾Ð´ÐºÐ°Ð¼Ð¸ Ð´Ð»Ð¸Ð½Ð½Ð¾Ð³Ð¾ Ð²Ñ‹Ð²Ð¾Ð´Ð° Ð¸ ÑÐ²Ð½Ñ‹Ð¼ Ð·Ð°Ñ…Ð²Ð°Ñ‚Ð¾Ð¼ tmux-pane.
- **ÐšÑ€Ð¾ÑÑÐ¿Ð»Ð°Ñ‚Ñ„Ð¾Ñ€Ð¼ÐµÐ½Ð½Ñ‹Ðµ Ð½Ð°Ñ‚Ð¸Ð²Ð½Ñ‹Ðµ release-Ð°Ñ€Ñ‚ÐµÑ„Ð°ÐºÑ‚Ñ‹** â€” Ð¿ÑƒÑ‚ÑŒ hydration Ð´Ð»Ñ `QMX-explore-harness`, `QMX-sparkshell` Ð¸ `native-release-manifest.json` Ñ‚ÐµÐ¿ÐµÑ€ÑŒ Ð²Ñ…Ð¾Ð´Ð¸Ñ‚ Ð² release pipeline.
- **Ð£ÑÐ¸Ð»ÐµÐ½Ð½Ñ‹Ð¹ CI/CD** â€” Ð´Ð¾Ð±Ð°Ð²Ð»ÐµÐ½Ñ‹ ÑÐ²Ð½Ð°Ñ Ð½Ð°ÑÑ‚Ñ€Ð¾Ð¹ÐºÐ° Rust toolchain Ð² job `build`, Ð° Ñ‚Ð°ÐºÐ¶Ðµ `cargo fmt --check` Ð¸ `cargo clippy -- -D warnings`.

Ð¡Ð¼. Ñ‚Ð°ÐºÐ¶Ðµ [release notes v0.9.0](./docs/release-notes-0.9.0.md) Ð¸ [release body](./docs/release-body-0.9.0.md).

## ÐŸÐµÑ€Ð²Ð°Ñ ÑÐµÑÑÐ¸Ñ

Ð’Ð½ÑƒÑ‚Ñ€Ð¸ Codex:

```text
/prompts:architect "analyze current auth boundaries"
/prompts:executor "implement input validation in login"
$plan "ship OAuth callback safely"
$team 3:executor "fix all TypeScript errors"
```

Ð˜Ð· Ñ‚ÐµÑ€Ð¼Ð¸Ð½Ð°Ð»Ð°:

```bash
QMX team 4:executor "parallelize a multi-module refactor"
QMX team status <team-name>
QMX team shutdown <team-name>
```

## Ð‘Ð°Ð·Ð¾Ð²Ð°Ñ Ð¼Ð¾Ð´ÐµÐ»ÑŒ

QMX ÑƒÑÑ‚Ð°Ð½Ð°Ð²Ð»Ð¸Ð²Ð°ÐµÑ‚ Ð¸ ÑÐ²ÑÐ·Ñ‹Ð²Ð°ÐµÑ‚ ÑÐ»ÐµÐ´ÑƒÑŽÑ‰Ð¸Ðµ ÑÐ»Ð¾Ð¸:

```text
User
  -> Qwen Code CLI
    -> AGENTS.md (Ð¼Ð¾Ð·Ð³ Ð¾Ñ€ÐºÐµÑÑ‚Ñ€Ð°Ñ†Ð¸Ð¸)
    -> ~/.codex/prompts/*.md (ÐºÐ°Ñ‚Ð°Ð»Ð¾Ð³ Ð¿Ñ€Ð¾Ð¼Ð¿Ñ‚Ð¾Ð² Ð°Ð³ÐµÐ½Ñ‚Ð¾Ð²)
    -> ~/.codex/skills/*/SKILL.md (ÐºÐ°Ñ‚Ð°Ð»Ð¾Ð³ Ð½Ð°Ð²Ñ‹ÐºÐ¾Ð²)
    -> ~/.codex/config.toml (Ñ„ÑƒÐ½ÐºÑ†Ð¸Ð¸, ÑƒÐ²ÐµÐ´Ð¾Ð¼Ð»ÐµÐ½Ð¸Ñ, MCP)
    -> .QMX/ (ÑÐ¾ÑÑ‚Ð¾ÑÐ½Ð¸Ðµ Ð²Ñ‹Ð¿Ð¾Ð»Ð½ÐµÐ½Ð¸Ñ, Ð¿Ð°Ð¼ÑÑ‚ÑŒ, Ð¿Ð»Ð°Ð½Ñ‹, Ð¶ÑƒÑ€Ð½Ð°Ð»Ñ‹)
```

## ÐžÑÐ½Ð¾Ð²Ð½Ñ‹Ðµ ÐºÐ¾Ð¼Ð°Ð½Ð´Ñ‹

```bash
QMX                # Ð—Ð°Ð¿ÑƒÑÑ‚Ð¸Ñ‚ÑŒ Codex (+ HUD Ð² tmux Ð¿Ñ€Ð¸ Ð½Ð°Ð»Ð¸Ñ‡Ð¸Ð¸)
QMX setup          # Ð£ÑÑ‚Ð°Ð½Ð¾Ð²Ð¸Ñ‚ÑŒ Ð¿Ñ€Ð¾Ð¼Ð¿Ñ‚Ñ‹/Ð½Ð°Ð²Ñ‹ÐºÐ¸/ÐºÐ¾Ð½Ñ„Ð¸Ð³ Ð¿Ð¾ Ð¾Ð±Ð»Ð°ÑÑ‚Ð¸ + .QMX Ð¿Ñ€Ð¾ÐµÐºÑ‚Ð° + AGENTS.md Ð´Ð»Ñ Ð²Ñ‹Ð±Ñ€Ð°Ð½Ð½Ð¾Ð¹ Ð¾Ð±Ð»Ð°ÑÑ‚Ð¸
QMX doctor         # Ð”Ð¸Ð°Ð³Ð½Ð¾ÑÑ‚Ð¸ÐºÐ° ÑƒÑÑ‚Ð°Ð½Ð¾Ð²ÐºÐ¸/ÑÑ€ÐµÐ´Ñ‹ Ð²Ñ‹Ð¿Ð¾Ð»Ð½ÐµÐ½Ð¸Ñ
QMX doctor --team  # Ð”Ð¸Ð°Ð³Ð½Ð¾ÑÑ‚Ð¸ÐºÐ° Team/swarm
QMX team ...       # Ð—Ð°Ð¿ÑƒÑÐº/ÑÑ‚Ð°Ñ‚ÑƒÑ/Ð²Ð¾Ð·Ð¾Ð±Ð½Ð¾Ð²Ð»ÐµÐ½Ð¸Ðµ/Ð·Ð°Ð²ÐµÑ€ÑˆÐµÐ½Ð¸Ðµ Ñ€Ð°Ð±Ð¾Ñ‡Ð¸Ñ… tmux
QMX status         # ÐŸÐ¾ÐºÐ°Ð·Ð°Ñ‚ÑŒ Ð°ÐºÑ‚Ð¸Ð²Ð½Ñ‹Ðµ Ñ€ÐµÐ¶Ð¸Ð¼Ñ‹
QMX cancel         # ÐžÑ‚Ð¼ÐµÐ½Ð¸Ñ‚ÑŒ Ð°ÐºÑ‚Ð¸Ð²Ð½Ñ‹Ðµ Ñ€ÐµÐ¶Ð¸Ð¼Ñ‹ Ð²Ñ‹Ð¿Ð¾Ð»Ð½ÐµÐ½Ð¸Ñ
QMX reasoning <mode> # low|medium|high|xhigh
QMX tmux-hook ...  # init|status|validate|test
QMX hooks ...      # init|status|validate|test (Ñ€Ð°Ð±Ð¾Ñ‡Ð¸Ð¹ Ð¿Ñ€Ð¾Ñ†ÐµÑÑ Ñ€Ð°ÑÑˆÐ¸Ñ€ÐµÐ½Ð¸Ð¹ Ð¿Ð»Ð°Ð³Ð¸Ð½Ð¾Ð²)
QMX hud ...        # --watch|--json|--preset
QMX help
```

## Ð Ð°ÑÑˆÐ¸Ñ€ÐµÐ½Ð¸Ðµ Hooks (Ð”Ð¾Ð¿Ð¾Ð»Ð½Ð¸Ñ‚ÐµÐ»ÑŒÐ½Ð°Ñ Ð¿Ð¾Ð²ÐµÑ€Ñ…Ð½Ð¾ÑÑ‚ÑŒ)

QMX Ñ‚ÐµÐ¿ÐµÑ€ÑŒ Ð²ÐºÐ»ÑŽÑ‡Ð°ÐµÑ‚ `QMX hooks` Ð´Ð»Ñ ÑÐ¾Ð·Ð´Ð°Ð½Ð¸Ñ ÑˆÐ°Ð±Ð»Ð¾Ð½Ð¾Ð² Ð¿Ð»Ð°Ð³Ð¸Ð½Ð¾Ð² Ð¸ Ð²Ð°Ð»Ð¸Ð´Ð°Ñ†Ð¸Ð¸.

- `QMX tmux-hook` Ð¿Ð¾-Ð¿Ñ€ÐµÐ¶Ð½ÐµÐ¼Ñƒ Ð¿Ð¾Ð´Ð´ÐµÑ€Ð¶Ð¸Ð²Ð°ÐµÑ‚ÑÑ Ð¸ Ð½Ðµ Ð¸Ð·Ð¼ÐµÐ½Ñ‘Ð½.
- `QMX hooks` ÑÐ²Ð»ÑÐµÑ‚ÑÑ Ð´Ð¾Ð¿Ð¾Ð»Ð½Ð¸Ñ‚ÐµÐ»ÑŒÐ½Ñ‹Ð¼ Ð¸ Ð½Ðµ Ð·Ð°Ð¼ÐµÐ½ÑÐµÑ‚ Ñ€Ð°Ð±Ð¾Ñ‡Ð¸Ðµ Ð¿Ñ€Ð¾Ñ†ÐµÑÑÑ‹ tmux-hook.
- Ð¤Ð°Ð¹Ð»Ñ‹ Ð¿Ð»Ð°Ð³Ð¸Ð½Ð¾Ð² Ñ€Ð°ÑÐ¿Ð¾Ð»Ð°Ð³Ð°ÑŽÑ‚ÑÑ Ð² `.QMX/hooks/*.mjs`.
- ÐŸÐ»Ð°Ð³Ð¸Ð½Ñ‹ Ð¿Ð¾ ÑƒÐ¼Ð¾Ð»Ñ‡Ð°Ð½Ð¸ÑŽ Ð¾Ñ‚ÐºÐ»ÑŽÑ‡ÐµÐ½Ñ‹; Ð²ÐºÐ»ÑŽÑ‡Ð¸Ñ‚Ðµ Ñ Ð¿Ð¾Ð¼Ð¾Ñ‰ÑŒÑŽ `QMX_HOOK_PLUGINS=1`.

ÐŸÐ¾Ð»Ð½Ñ‹Ð¹ Ñ€Ð°Ð±Ð¾Ñ‡Ð¸Ð¹ Ð¿Ñ€Ð¾Ñ†ÐµÑÑ Ñ€Ð°ÑÑˆÐ¸Ñ€ÐµÐ½Ð¸Ð¹ Ð¸ Ð¼Ð¾Ð´ÐµÐ»ÑŒ ÑÐ¾Ð±Ñ‹Ñ‚Ð¸Ð¹ Ð¾Ð¿Ð¸ÑÐ°Ð½Ñ‹ Ð² `docs/hooks-extension.md`.

## Ð¤Ð»Ð°Ð³Ð¸ Ð·Ð°Ð¿ÑƒÑÐºÐ°

```bash
--yolo
--high
--xhigh
--madmax
--force
--dry-run
--verbose
--scope <user|project>  # Ñ‚Ð¾Ð»ÑŒÐºÐ¾ Ð´Ð»Ñ setup
```

`--madmax` ÑÐ¾Ð¾Ñ‚Ð²ÐµÑ‚ÑÑ‚Ð²ÑƒÐµÑ‚ Codex `--dangerously-bypass-approvals-and-sandbox`.
Ð˜ÑÐ¿Ð¾Ð»ÑŒÐ·ÑƒÐ¹Ñ‚Ðµ Ñ‚Ð¾Ð»ÑŒÐºÐ¾ Ð² Ð´Ð¾Ð²ÐµÑ€ÐµÐ½Ð½Ñ‹Ñ…/Ð²Ð½ÐµÑˆÐ½Ð¸Ñ… sandbox-Ð¾ÐºÑ€ÑƒÐ¶ÐµÐ½Ð¸ÑÑ….

### ÐŸÐ¾Ð»Ð¸Ñ‚Ð¸ÐºÐ° workingDirectory MCP (Ð¾Ð¿Ñ†Ð¸Ð¾Ð½Ð°Ð»ÑŒÐ½Ð¾Ðµ ÑƒÑÐ¸Ð»ÐµÐ½Ð¸Ðµ)

ÐŸÐ¾ ÑƒÐ¼Ð¾Ð»Ñ‡Ð°Ð½Ð¸ÑŽ Ð¸Ð½ÑÑ‚Ñ€ÑƒÐ¼ÐµÐ½Ñ‚Ñ‹ MCP state/memory/trace Ð¿Ñ€Ð¸Ð½Ð¸Ð¼Ð°ÑŽÑ‚ `workingDirectory`, Ð¿Ñ€ÐµÐ´Ð¾ÑÑ‚Ð°Ð²Ð»ÐµÐ½Ð½Ñ‹Ð¹ Ð²Ñ‹Ð·Ñ‹Ð²Ð°ÑŽÑ‰ÐµÐ¹ ÑÑ‚Ð¾Ñ€Ð¾Ð½Ð¾Ð¹.
Ð§Ñ‚Ð¾Ð±Ñ‹ Ð¾Ð³Ñ€Ð°Ð½Ð¸Ñ‡Ð¸Ñ‚ÑŒ ÑÑ‚Ð¾, Ð·Ð°Ð´Ð°Ð¹Ñ‚Ðµ ÑÐ¿Ð¸ÑÐ¾Ðº Ñ€Ð°Ð·Ñ€ÐµÑˆÑ‘Ð½Ð½Ñ‹Ñ… ÐºÐ¾Ñ€Ð½ÐµÐ¹:

```bash
export QMX_MCP_WORKDIR_ROOTS="/path/to/project:/path/to/another-root"
```

ÐŸÑ€Ð¸ ÑƒÑÑ‚Ð°Ð½Ð¾Ð²ÐºÐµ Ð·Ð½Ð°Ñ‡ÐµÐ½Ð¸Ñ `workingDirectory` Ð·Ð° Ð¿Ñ€ÐµÐ´ÐµÐ»Ð°Ð¼Ð¸ ÑÑ‚Ð¸Ñ… ÐºÐ¾Ñ€Ð½ÐµÐ¹ Ð±ÑƒÐ´ÑƒÑ‚ Ð¾Ñ‚ÐºÐ»Ð¾Ð½ÐµÐ½Ñ‹.

## Codex-First ÑƒÐ¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ Ð¿Ñ€Ð¾Ð¼Ð¿Ñ‚Ð°Ð¼Ð¸

ÐŸÐ¾ ÑƒÐ¼Ð¾Ð»Ñ‡Ð°Ð½Ð¸ÑŽ QMX Ð²Ð½ÐµÐ´Ñ€ÑÐµÑ‚:

```text
-c model_instructions_file="<cwd>/AGENTS.md"
```

Ð­Ñ‚Ð¾ Ð¾Ð±ÑŠÐµÐ´Ð¸Ð½ÑÐµÑ‚ `AGENTS.md` Ð¸Ð· `CODEX_HOME` Ñ Ð¿Ñ€Ð¾ÐµÐºÑ‚Ð½Ñ‹Ð¼ `AGENTS.md` (ÐµÑÐ»Ð¸ Ð¾Ð½ ÐµÑÑ‚ÑŒ), Ð° Ð·Ð°Ñ‚ÐµÐ¼ Ð´Ð¾Ð±Ð°Ð²Ð»ÑÐµÑ‚ runtime-overlay.
Ð Ð°ÑÑˆÐ¸Ñ€ÑÐµÑ‚ Ð¿Ð¾Ð²ÐµÐ´ÐµÐ½Ð¸Ðµ Codex, Ð½Ð¾ Ð½Ðµ Ð·Ð°Ð¼ÐµÐ½ÑÐµÑ‚/Ð¾Ð±Ñ…Ð¾Ð´Ð¸Ñ‚ Ð¾ÑÐ½Ð¾Ð²Ð½Ñ‹Ðµ ÑÐ¸ÑÑ‚ÐµÐ¼Ð½Ñ‹Ðµ Ð¿Ð¾Ð»Ð¸Ñ‚Ð¸ÐºÐ¸ Codex.

Ð£Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ:

```bash
QMX_BYPASS_DEFAULT_SYSTEM_PROMPT=0 QMX     # Ð¾Ñ‚ÐºÐ»ÑŽÑ‡Ð¸Ñ‚ÑŒ Ð²Ð½ÐµÐ´Ñ€ÐµÐ½Ð¸Ðµ AGENTS.md
QMX_MODEL_INSTRUCTIONS_FILE=/path/to/instructions.md QMX
```

## ÐšÐ¾Ð¼Ð°Ð½Ð´Ð½Ñ‹Ð¹ Ñ€ÐµÐ¶Ð¸Ð¼

Ð˜ÑÐ¿Ð¾Ð»ÑŒÐ·ÑƒÐ¹Ñ‚Ðµ ÐºÐ¾Ð¼Ð°Ð½Ð´Ð½Ñ‹Ð¹ Ñ€ÐµÐ¶Ð¸Ð¼ Ð´Ð»Ñ Ð¼Ð°ÑÑˆÑ‚Ð°Ð±Ð½Ð¾Ð¹ Ñ€Ð°Ð±Ð¾Ñ‚Ñ‹, ÐºÐ¾Ñ‚Ð¾Ñ€Ð°Ñ Ð²Ñ‹Ð¸Ð³Ñ€Ñ‹Ð²Ð°ÐµÑ‚ Ð¾Ñ‚ Ð¿Ð°Ñ€Ð°Ð»Ð»ÐµÐ»ÑŒÐ½Ñ‹Ñ… Ð¸ÑÐ¿Ð¾Ð»Ð½Ð¸Ñ‚ÐµÐ»ÐµÐ¹.

Ð–Ð¸Ð·Ð½ÐµÐ½Ð½Ñ‹Ð¹ Ñ†Ð¸ÐºÐ»:

```text
start -> assign scoped lanes -> monitor -> verify terminal tasks -> shutdown
```

ÐžÐ¿ÐµÑ€Ð°Ñ†Ð¸Ð¾Ð½Ð½Ñ‹Ðµ ÐºÐ¾Ð¼Ð°Ð½Ð´Ñ‹:

```bash
QMX team <args>
QMX team status <team-name>
QMX team resume <team-name>
QMX team shutdown <team-name>
```

Ð’Ð°Ð¶Ð½Ð¾Ðµ Ð¿Ñ€Ð°Ð²Ð¸Ð»Ð¾: Ð½Ðµ Ð·Ð°Ð²ÐµÑ€ÑˆÐ°Ð¹Ñ‚Ðµ Ñ€Ð°Ð±Ð¾Ñ‚Ñƒ, Ð¿Ð¾ÐºÐ° Ð·Ð°Ð´Ð°Ñ‡Ð¸ Ð½Ð°Ñ…Ð¾Ð´ÑÑ‚ÑÑ Ð² ÑÐ¾ÑÑ‚Ð¾ÑÐ½Ð¸Ð¸ `in_progress`, ÐµÑÐ»Ð¸ Ñ‚Ð¾Ð»ÑŒÐºÐ¾ Ð½Ðµ Ð¿Ñ€ÐµÑ€Ñ‹Ð²Ð°ÐµÑ‚Ðµ Ð²Ñ‹Ð¿Ð¾Ð»Ð½ÐµÐ½Ð¸Ðµ.

### Team shutdown policy

Use `QMX team shutdown <team-name>` after the team reaches a terminal state.
Team cleanup now follows one standalone path; there is no separate `QMX team ralph ...` shutdown policy anymore.

Ð’Ñ‹Ð±Ð¾Ñ€ Worker CLI Ð´Ð»Ñ Ñ€Ð°Ð±Ð¾Ñ‡Ð¸Ñ… ÐºÐ¾Ð¼Ð°Ð½Ð´Ñ‹:

```bash
QMX_TEAM_WORKER_CLI=auto    # Ð¿Ð¾ ÑƒÐ¼Ð¾Ð»Ñ‡Ð°Ð½Ð¸ÑŽ; Ð¸ÑÐ¿Ð¾Ð»ÑŒÐ·ÑƒÐµÑ‚ claude, ÐµÑÐ»Ð¸ worker --model ÑÐ¾Ð´ÐµÑ€Ð¶Ð¸Ñ‚ "claude"
QMX_TEAM_WORKER_CLI=codex   # Ð¿Ñ€Ð¸Ð½ÑƒÐ´Ð¸Ñ‚ÐµÐ»ÑŒÐ½Ð¾ Qwen Code CLI
QMX_TEAM_WORKER_CLI=claude  # Ð¿Ñ€Ð¸Ð½ÑƒÐ´Ð¸Ñ‚ÐµÐ»ÑŒÐ½Ð¾ Claude CLI
QMX_TEAM_WORKER_CLI_MAP=codex,codex,claude,claude  # CLI Ð´Ð»Ñ ÐºÐ°Ð¶Ð´Ð¾Ð³Ð¾ Ñ€Ð°Ð±Ð¾Ñ‡ÐµÐ³Ð¾ (Ð´Ð»Ð¸Ð½Ð°=1 Ð¸Ð»Ð¸ ÐºÐ¾Ð»Ð¸Ñ‡ÐµÑÑ‚Ð²Ð¾ Ñ€Ð°Ð±Ð¾Ñ‡Ð¸Ñ…)
QMX_TEAM_AUTO_INTERRUPT_RETRY=0  # Ð¾Ð¿Ñ†Ð¸Ð¾Ð½Ð°Ð»ÑŒÐ½Ð¾: Ð¾Ñ‚ÐºÐ»ÑŽÑ‡Ð¸Ñ‚ÑŒ Ð°Ð´Ð°Ð¿Ñ‚Ð¸Ð²Ð½Ñ‹Ð¹ Ð¾Ñ‚ÐºÐ°Ñ‚ queue->resend
```

ÐŸÑ€Ð¸Ð¼ÐµÑ‡Ð°Ð½Ð¸Ñ:
- ÐÑ€Ð³ÑƒÐ¼ÐµÐ½Ñ‚Ñ‹ Ð·Ð°Ð¿ÑƒÑÐºÐ° Ñ€Ð°Ð±Ð¾Ñ‡Ð¸Ñ… Ð¿Ð¾-Ð¿Ñ€ÐµÐ¶Ð½ÐµÐ¼Ñƒ Ð¿ÐµÑ€ÐµÐ´Ð°ÑŽÑ‚ÑÑ Ñ‡ÐµÑ€ÐµÐ· `QMX_TEAM_WORKER_LAUNCH_ARGS`.
- `QMX_TEAM_WORKER_CLI_MAP` Ð¿ÐµÑ€ÐµÐ¾Ð¿Ñ€ÐµÐ´ÐµÐ»ÑÐµÑ‚ `QMX_TEAM_WORKER_CLI` Ð´Ð»Ñ Ð²Ñ‹Ð±Ð¾Ñ€Ð° Ð½Ð° ÑƒÑ€Ð¾Ð²Ð½Ðµ Ñ€Ð°Ð±Ð¾Ñ‡ÐµÐ³Ð¾.
- ÐžÑ‚Ð¿Ñ€Ð°Ð²ÐºÐ° Ñ‚Ñ€Ð¸Ð³Ð³ÐµÑ€Ð¾Ð² Ð¿Ð¾ ÑƒÐ¼Ð¾Ð»Ñ‡Ð°Ð½Ð¸ÑŽ Ð¸ÑÐ¿Ð¾Ð»ÑŒÐ·ÑƒÐµÑ‚ Ð°Ð´Ð°Ð¿Ñ‚Ð¸Ð²Ð½Ñ‹Ðµ Ð¿Ð¾Ð²Ñ‚Ð¾Ñ€Ð½Ñ‹Ðµ Ð¿Ð¾Ð¿Ñ‹Ñ‚ÐºÐ¸ (queue/submit, Ð·Ð°Ñ‚ÐµÐ¼ Ð±ÐµÐ·Ð¾Ð¿Ð°ÑÐ½Ñ‹Ð¹ Ð¾Ñ‚ÐºÐ°Ñ‚ clear-line+resend Ð¿Ñ€Ð¸ Ð½ÐµÐ¾Ð±Ñ…Ð¾Ð´Ð¸Ð¼Ð¾ÑÑ‚Ð¸).
- Ð’ Ñ€ÐµÐ¶Ð¸Ð¼Ðµ Claude worker QMX Ð·Ð°Ð¿ÑƒÑÐºÐ°ÐµÑ‚ Ñ€Ð°Ð±Ð¾Ñ‡Ð¸Ñ… ÐºÐ°Ðº Ð¾Ð±Ñ‹Ñ‡Ð½Ñ‹Ð¹ `claude` (Ð±ÐµÐ· Ð´Ð¾Ð¿Ð¾Ð»Ð½Ð¸Ñ‚ÐµÐ»ÑŒÐ½Ñ‹Ñ… Ð°Ñ€Ð³ÑƒÐ¼ÐµÐ½Ñ‚Ð¾Ð²) Ð¸ Ð¸Ð³Ð½Ð¾Ñ€Ð¸Ñ€ÑƒÐµÑ‚ ÑÐ²Ð½Ñ‹Ðµ Ð¿ÐµÑ€ÐµÐ¾Ð¿Ñ€ÐµÐ´ÐµÐ»ÐµÐ½Ð¸Ñ `--model` / `--config` / `--effort`, Ñ‡Ñ‚Ð¾Ð±Ñ‹ Claude Ð¸ÑÐ¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ð» ÑÑ‚Ð°Ð½Ð´Ð°Ñ€Ñ‚Ð½Ñ‹Ð¹ `settings.json`.

## Ð§Ñ‚Ð¾ Ð·Ð°Ð¿Ð¸ÑÑ‹Ð²Ð°ÐµÑ‚ `QMX setup`

- `.QMX/setup-scope.json` (ÑÐ¾Ñ…Ñ€Ð°Ð½Ñ‘Ð½Ð½Ð°Ñ Ð¾Ð±Ð»Ð°ÑÑ‚ÑŒ ÑƒÑÑ‚Ð°Ð½Ð¾Ð²ÐºÐ¸)
- Ð£ÑÑ‚Ð°Ð½Ð¾Ð²ÐºÐ¸ Ð² Ð·Ð°Ð²Ð¸ÑÐ¸Ð¼Ð¾ÑÑ‚Ð¸ Ð¾Ñ‚ Ð¾Ð±Ð»Ð°ÑÑ‚Ð¸:
  - `user`: `~/.codex/prompts/`, `~/.codex/skills/`, `~/.codex/config.toml`, `~/.QMX/agents/`, `~/.codex/AGENTS.md`
  - `project`: `./.codex/prompts/`, `./.codex/skills/`, `./.codex/config.toml`, `./.QMX/agents/`, `./AGENTS.md`
- ÐŸÐ¾Ð²ÐµÐ´ÐµÐ½Ð¸Ðµ Ð¿Ñ€Ð¸ Ð·Ð°Ð¿ÑƒÑÐºÐµ: ÐµÑÐ»Ð¸ ÑÐ¾Ñ…Ñ€Ð°Ð½Ñ‘Ð½Ð½Ð°Ñ Ð¾Ð±Ð»Ð°ÑÑ‚ÑŒ â€” `project`, `QMX` Ð°Ð²Ñ‚Ð¾Ð¼Ð°Ñ‚Ð¸Ñ‡ÐµÑÐºÐ¸ Ð¸ÑÐ¿Ð¾Ð»ÑŒÐ·ÑƒÐµÑ‚ `CODEX_HOME=./.codex` (ÐµÑÐ»Ð¸ `CODEX_HOME` ÐµÑ‰Ñ‘ Ð½Ðµ Ð·Ð°Ð´Ð°Ð½).
- Ð˜Ð½ÑÑ‚Ñ€ÑƒÐºÑ†Ð¸Ð¸ Ð·Ð°Ð¿ÑƒÑÐºÐ° Ð¾Ð±ÑŠÐµÐ´Ð¸Ð½ÑÑŽÑ‚ `~/.codex/AGENTS.md` (Ð¸Ð»Ð¸ `CODEX_HOME/AGENTS.md`, ÐµÑÐ»Ð¸ Ð¿ÑƒÑ‚ÑŒ Ð¿ÐµÑ€ÐµÐ¾Ð¿Ñ€ÐµÐ´ÐµÐ»Ñ‘Ð½) Ñ Ð¿Ñ€Ð¾ÐµÐºÑ‚Ð½Ñ‹Ð¼ `./AGENTS.md`, Ð° Ð·Ð°Ñ‚ÐµÐ¼ Ð´Ð¾Ð±Ð°Ð²Ð»ÑÑŽÑ‚ runtime-overlay.
- Ð¡ÑƒÑ‰ÐµÑÑ‚Ð²ÑƒÑŽÑ‰Ð¸Ðµ Ñ„Ð°Ð¹Ð»Ñ‹ `AGENTS.md` Ð½Ð¸ÐºÐ¾Ð³Ð´Ð° Ð½Ðµ Ð¿ÐµÑ€ÐµÐ·Ð°Ð¿Ð¸ÑÑ‹Ð²Ð°ÑŽÑ‚ÑÑ Ð¼Ð¾Ð»Ñ‡Ð°: Ð² Ð¸Ð½Ñ‚ÐµÑ€Ð°ÐºÑ‚Ð¸Ð²Ð½Ð¾Ð¼ TTY setup ÑÐ¿Ñ€Ð°ÑˆÐ¸Ð²Ð°ÐµÑ‚ Ð¿ÐµÑ€ÐµÐ´ Ð·Ð°Ð¼ÐµÐ½Ð¾Ð¹, Ð° Ð² Ð½ÐµÐ¸Ð½Ñ‚ÐµÑ€Ð°ÐºÑ‚Ð¸Ð²Ð½Ð¾Ð¼ Ñ€ÐµÐ¶Ð¸Ð¼Ðµ Ð¿Ñ€Ð¾Ð¿ÑƒÑÐºÐ°ÐµÑ‚ Ð·Ð°Ð¼ÐµÐ½Ñƒ Ð±ÐµÐ· `--force` (Ð¿Ñ€Ð¾Ð²ÐµÑ€ÐºÐ¸ Ð±ÐµÐ·Ð¾Ð¿Ð°ÑÐ½Ð¾ÑÑ‚Ð¸ Ð°ÐºÑ‚Ð¸Ð²Ð½Ñ‹Ñ… ÑÐµÑÑÐ¸Ð¹ Ð¾ÑÑ‚Ð°ÑŽÑ‚ÑÑ Ð² ÑÐ¸Ð»Ðµ).
- ÐžÐ±Ð½Ð¾Ð²Ð»ÐµÐ½Ð¸Ñ `config.toml` (Ð´Ð»Ñ Ð¾Ð±ÐµÐ¸Ñ… Ð¾Ð±Ð»Ð°ÑÑ‚ÐµÐ¹):
  - `notify = ["node", "..."]`
  - `model_reasoning_effort = "high"`
  - `developer_instructions = "..."`
  - `[features] multi_agent = true, child_agents_md = true`
  - Ð—Ð°Ð¿Ð¸ÑÐ¸ MCP-ÑÐµÑ€Ð²ÐµÑ€Ð¾Ð² (`QMX_state`, `QMX_memory`, `QMX_code_intel`, `QMX_trace`)
  - `[tui] status_line`
- `AGENTS.md` Ð´Ð»Ñ Ð²Ñ‹Ð±Ñ€Ð°Ð½Ð½Ð¾Ð¹ Ð¾Ð±Ð»Ð°ÑÑ‚Ð¸
- Ð”Ð¸Ñ€ÐµÐºÑ‚Ð¾Ñ€Ð¸Ð¸ `.QMX/` Ð¸ ÐºÐ¾Ð½Ñ„Ð¸Ð³ÑƒÑ€Ð°Ñ†Ð¸Ñ HUD

## ÐÐ³ÐµÐ½Ñ‚Ñ‹ Ð¸ Ð½Ð°Ð²Ñ‹ÐºÐ¸

- ÐŸÑ€Ð¾Ð¼Ð¿Ñ‚Ñ‹: `prompts/*.md` (ÑƒÑÑ‚Ð°Ð½Ð°Ð²Ð»Ð¸Ð²Ð°ÑŽÑ‚ÑÑ Ð² `~/.codex/prompts/` Ð´Ð»Ñ `user`, `./.codex/prompts/` Ð´Ð»Ñ `project`)
- ÐÐ°Ð²Ñ‹ÐºÐ¸: `skills/*/SKILL.md` (ÑƒÑÑ‚Ð°Ð½Ð°Ð²Ð»Ð¸Ð²Ð°ÑŽÑ‚ÑÑ Ð² `~/.codex/skills/` Ð´Ð»Ñ `user`, `./.codex/skills/` Ð´Ð»Ñ `project`)

ÐŸÑ€Ð¸Ð¼ÐµÑ€Ñ‹:
- ÐÐ³ÐµÐ½Ñ‚Ñ‹: `architect`, `planner`, `executor`, `debugger`, `verifier`, `security-reviewer`
- ÐÐ°Ð²Ñ‹ÐºÐ¸: `autopilot`, `plan`, `team`, `ralph`, `ultrawork`, `cancel`

## Ð¡Ñ‚Ñ€ÑƒÐºÑ‚ÑƒÑ€Ð° Ð¿Ñ€Ð¾ÐµÐºÑ‚Ð°

```text
oh-my-qwen/
  bin/QMX.js
  src/
    cli/
    team/
    mcp/
    hooks/
    hud/
    config/
    modes/
    notifications/
    verification/
  prompts/
  skills/
  templates/
  scripts/
```

## Ð Ð°Ð·Ñ€Ð°Ð±Ð¾Ñ‚ÐºÐ°

```bash
git clone https://github.com/Yeachan-Heo/oh-my-qwen.git
cd oh-my-qwen
npm install
npm run build
npm test
```

## Ð”Ð¾ÐºÑƒÐ¼ÐµÐ½Ñ‚Ð°Ñ†Ð¸Ñ

- **[ÐŸÐ¾Ð»Ð½Ð°Ñ Ð´Ð¾ÐºÑƒÐ¼ÐµÐ½Ñ‚Ð°Ñ†Ð¸Ñ](https://yeachan-heo.github.io/oh-my-qwen-website/docs.html)** â€” ÐŸÐ¾Ð»Ð½Ð¾Ðµ Ñ€ÑƒÐºÐ¾Ð²Ð¾Ð´ÑÑ‚Ð²Ð¾
- **[Ð¡Ð¿Ñ€Ð°Ð²Ð¾Ñ‡Ð½Ð¸Ðº CLI](https://yeachan-heo.github.io/oh-my-qwen-website/docs.html#cli-reference)** â€” Ð’ÑÐµ ÐºÐ¾Ð¼Ð°Ð½Ð´Ñ‹ `QMX`, Ñ„Ð»Ð°Ð³Ð¸ Ð¸ Ð¸Ð½ÑÑ‚Ñ€ÑƒÐ¼ÐµÐ½Ñ‚Ñ‹
- **[Ð ÑƒÐºÐ¾Ð²Ð¾Ð´ÑÑ‚Ð²Ð¾ Ð¿Ð¾ ÑƒÐ²ÐµÐ´Ð¾Ð¼Ð»ÐµÐ½Ð¸ÑÐ¼](https://yeachan-heo.github.io/oh-my-qwen-website/docs.html#notifications)** â€” ÐÐ°ÑÑ‚Ñ€Ð¾Ð¹ÐºÐ° Discord, Telegram, Slack Ð¸ webhook
- **[Ð ÐµÐºÐ¾Ð¼ÐµÐ½Ð´ÑƒÐµÐ¼Ñ‹Ðµ Ñ€Ð°Ð±Ð¾Ñ‡Ð¸Ðµ Ð¿Ñ€Ð¾Ñ†ÐµÑÑÑ‹](https://yeachan-heo.github.io/oh-my-qwen-website/docs.html#workflows)** â€” ÐŸÑ€Ð¾Ð²ÐµÑ€ÐµÐ½Ð½Ñ‹Ðµ Ð² Ð±Ð¾ÑŽ Ñ†ÐµÐ¿Ð¾Ñ‡ÐºÐ¸ Ð½Ð°Ð²Ñ‹ÐºÐ¾Ð² Ð´Ð»Ñ Ñ‚Ð¸Ð¿Ð¸Ñ‡Ð½Ñ‹Ñ… Ð·Ð°Ð´Ð°Ñ‡
- **[ÐŸÑ€Ð¸Ð¼ÐµÑ‡Ð°Ð½Ð¸Ñ Ðº Ð²Ñ‹Ð¿ÑƒÑÐºÐ°Ð¼](https://yeachan-heo.github.io/oh-my-qwen-website/docs.html#release-notes)** â€” Ð§Ñ‚Ð¾ Ð½Ð¾Ð²Ð¾Ð³Ð¾ Ð² ÐºÐ°Ð¶Ð´Ð¾Ð¹ Ð²ÐµÑ€ÑÐ¸Ð¸

## ÐŸÑ€Ð¸Ð¼ÐµÑ‡Ð°Ð½Ð¸Ñ

- ÐŸÐ¾Ð»Ð½Ñ‹Ð¹ Ð¶ÑƒÑ€Ð½Ð°Ð» Ð¸Ð·Ð¼ÐµÐ½ÐµÐ½Ð¸Ð¹: `CHANGELOG.md`
- Ð ÑƒÐºÐ¾Ð²Ð¾Ð´ÑÑ‚Ð²Ð¾ Ð¿Ð¾ Ð¼Ð¸Ð³Ñ€Ð°Ñ†Ð¸Ð¸ (Ð¿Ð¾ÑÐ»Ðµ v0.4.4 mainline): `docs/migration-mainline-post-v0.4.4.md`
- Ð—Ð°Ð¼ÐµÑ‚ÐºÐ¸ Ð¾ Ð¿Ð¾ÐºÑ€Ñ‹Ñ‚Ð¸Ð¸ Ð¸ Ð¿Ð°Ñ€Ð¸Ñ‚ÐµÑ‚Ðµ: `COVERAGE.md`
- Ð Ð°Ð±Ð¾Ñ‡Ð¸Ð¹ Ð¿Ñ€Ð¾Ñ†ÐµÑÑ Ñ€Ð°ÑÑˆÐ¸Ñ€ÐµÐ½Ð¸Ð¹ hook: `docs/hooks-extension.md`
- Ð”ÐµÑ‚Ð°Ð»Ð¸ ÑƒÑÑ‚Ð°Ð½Ð¾Ð²ÐºÐ¸ Ð¸ ÑƒÑ‡Ð°ÑÑ‚Ð¸Ñ: `CONTRIBUTING.md`

## Ð‘Ð»Ð°Ð³Ð¾Ð´Ð°Ñ€Ð½Ð¾ÑÑ‚Ð¸

Ð’Ð´Ð¾Ñ…Ð½Ð¾Ð²Ð»ÐµÐ½Ð¾ Ð¿Ñ€Ð¾ÐµÐºÑ‚Ð¾Ð¼ [oh-my-claudecode](https://github.com/Yeachan-Heo/oh-my-claudecode), Ð°Ð´Ð°Ð¿Ñ‚Ð¸Ñ€Ð¾Ð²Ð°Ð½Ð¾ Ð´Ð»Ñ Qwen Code CLI.

## Ð›Ð¸Ñ†ÐµÐ½Ð·Ð¸Ñ

MIT

