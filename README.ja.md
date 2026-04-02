# oh-my-qwen (QMX)

<p align="center">
  <img src="https://yeachan-heo.github.io/oh-my-qwen-website/QMX-character-nobg.png" alt="oh-my-qwen character" width="280">
  <br>
  <em>ã‚ãªãŸã®codexã¯ä¸€äººã˜ã‚ƒãªã„ã€‚</em>
</p>

[![npm version](https://img.shields.io/npm/v/oh-my-qwen)](https://www.npmjs.com/package/oh-my-qwen)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Node.js](https://img.shields.io/badge/node-%3E%3D20-brightgreen)](https://nodejs.org)
[![Discord](https://img.shields.io/discord/1452487457085063218?color=5865F2&logo=discord&logoColor=white&label=Discord)](https://discord.gg/PUwSMR9XNk)

> **[Website](https://yeachan-heo.github.io/oh-my-qwen-website/)** | **[Documentation](https://yeachan-heo.github.io/oh-my-qwen-website/docs.html)** | **[CLI Reference](https://yeachan-heo.github.io/oh-my-qwen-website/docs.html#cli-reference)** | **[Workflows](https://yeachan-heo.github.io/oh-my-qwen-website/docs.html#workflows)** | **[OpenClaw çµ±åˆã‚¬ã‚¤ãƒ‰](./docs/openclaw-integration.ja.md)** | **[GitHub](https://github.com/Yeachan-Heo/oh-my-qwen)** | **[npm](https://www.npmjs.com/package/oh-my-qwen)**

[OpenAI Qwen Code CLI](https://github.com/openai/codex)ã®ãŸã‚ã®ãƒžãƒ«ãƒã‚¨ãƒ¼ã‚¸ã‚§ãƒ³ãƒˆã‚ªãƒ¼ã‚±ã‚¹ãƒˆãƒ¬ãƒ¼ã‚·ãƒ§ãƒ³ãƒ¬ã‚¤ãƒ¤ãƒ¼ã€‚

## v0.9.0 ã®æ–°æ©Ÿèƒ½ â€” Spark Initiative

Spark Initiative ã¯ã€QMX ã®ãƒã‚¤ãƒ†ã‚£ãƒ–æŽ¢ç´¢ãƒ»æ¤œæŸ»çµŒè·¯ã‚’å¼·åŒ–ã™ã‚‹ãƒªãƒªãƒ¼ã‚¹ã§ã™ã€‚

- **`QMX explore` ãƒã‚¤ãƒ†ã‚£ãƒ–ãƒãƒ¼ãƒã‚¹** â€” èª­ã¿å–ã‚Šå°‚ç”¨ã®ãƒªãƒã‚¸ãƒˆãƒªæŽ¢ç´¢ã‚’ Rust ãƒ™ãƒ¼ã‚¹ã®ãƒãƒ¼ãƒã‚¹ã§é«˜é€Ÿã‹ã¤åŽ³æ ¼ã«å®Ÿè¡Œã—ã¾ã™ã€‚
- **`QMX sparkshell`** â€” é•·ã„å‡ºåŠ›ã®è¦ç´„ã¨ tmux pane ã‚­ãƒ£ãƒ—ãƒãƒ£ã‚’è¡Œã†ã€ã‚ªãƒšãƒ¬ãƒ¼ã‚¿ãƒ¼å‘ã‘ã®ãƒã‚¤ãƒ†ã‚£ãƒ–æ¤œæŸ»ã‚µãƒ¼ãƒ•ã‚§ã‚¹ã§ã™ã€‚
- **ã‚¯ãƒ­ã‚¹ãƒ—ãƒ©ãƒƒãƒˆãƒ•ã‚©ãƒ¼ãƒ ã®ãƒã‚¤ãƒ†ã‚£ãƒ–ãƒªãƒªãƒ¼ã‚¹è³‡ç”£** â€” `QMX-explore-harness`ã€`QMX-sparkshell`ã€`native-release-manifest.json` ã‚’ä¸­å¿ƒã¨ã—ãŸ hydration çµŒè·¯ãŒãƒªãƒªãƒ¼ã‚¹ãƒ‘ã‚¤ãƒ—ãƒ©ã‚¤ãƒ³ã«çµ„ã¿è¾¼ã¾ã‚Œã¾ã—ãŸã€‚
- **å¼·åŒ–ã•ã‚ŒãŸ CI/CD** â€” `build` ã‚¸ãƒ§ãƒ–ã§ã®æ˜Žç¤ºçš„ãª Rust toolchain ã‚»ãƒƒãƒˆã‚¢ãƒƒãƒ—ã€`cargo fmt --check`ã€`cargo clippy -- -D warnings` ã‚’è¿½åŠ ã—ã¾ã—ãŸã€‚

è©³ç´°ã¯ [v0.9.0 ãƒªãƒªãƒ¼ã‚¹ãƒŽãƒ¼ãƒˆ](./docs/release-notes-0.9.0.md) ã¨ [ãƒªãƒªãƒ¼ã‚¹æœ¬æ–‡](./docs/release-body-0.9.0.md) ã‚’å‚ç…§ã—ã¦ãã ã•ã„ã€‚

## æœ€åˆã®ã‚»ãƒƒã‚·ãƒ§ãƒ³

Codexå†…éƒ¨ã§ï¼š

```text
$architect "analyze current auth boundaries"
$executor "implement input validation in login"
$plan "ship OAuth callback safely"
$team 3:executor "fix all TypeScript errors"
```

ã‚¿ãƒ¼ãƒŸãƒŠãƒ«ã‹ã‚‰ï¼š

```bash
QMX team 4:executor "parallelize a multi-module refactor"
QMX team status <team-name>
QMX team shutdown <team-name>
```

## ã‚³ã‚¢ãƒ¢ãƒ‡ãƒ«

QMXã¯ä»¥ä¸‹ã®ãƒ¬ã‚¤ãƒ¤ãƒ¼ã‚’ã‚¤ãƒ³ã‚¹ãƒˆãƒ¼ãƒ«ã—ã¦æŽ¥ç¶šã—ã¾ã™ï¼š

```text
User
  -> Qwen Code CLI
    -> AGENTS.md (ã‚ªãƒ¼ã‚±ã‚¹ãƒˆãƒ¬ãƒ¼ã‚·ãƒ§ãƒ³ãƒ–ãƒ¬ã‚¤ãƒ³)
    -> ~/.codex/prompts/*.md (ã‚¨ãƒ¼ã‚¸ã‚§ãƒ³ãƒˆãƒ—ãƒ­ãƒ³ãƒ—ãƒˆã‚«ã‚¿ãƒ­ã‚°)
    -> ~/.codex/skills/*/SKILL.md (ã‚¹ã‚­ãƒ«ã‚«ã‚¿ãƒ­ã‚°)
    -> ~/.codex/config.toml (æ©Ÿèƒ½ã€é€šçŸ¥ã€MCP)
    -> .QMX/ (ãƒ©ãƒ³ã‚¿ã‚¤ãƒ çŠ¶æ…‹ã€ãƒ¡ãƒ¢ãƒªã€è¨ˆç”»ã€ãƒ­ã‚°)
```

## ä¸»è¦ã‚³ãƒžãƒ³ãƒ‰

```bash
QMX                # Codexã‚’èµ·å‹•ï¼ˆtmuxã§HUDä»˜ãï¼‰
QMX setup          # ã‚¹ã‚³ãƒ¼ãƒ—åˆ¥ã«ãƒ—ãƒ­ãƒ³ãƒ—ãƒˆ/ã‚¹ã‚­ãƒ«/è¨­å®šã‚’ã‚¤ãƒ³ã‚¹ãƒˆãƒ¼ãƒ« + ãƒ—ãƒ­ã‚¸ã‚§ã‚¯ãƒˆ .QMX + ã‚¹ã‚³ãƒ¼ãƒ—åˆ¥ AGENTS.md
QMX doctor         # ã‚¤ãƒ³ã‚¹ãƒˆãƒ¼ãƒ«/ãƒ©ãƒ³ã‚¿ã‚¤ãƒ è¨ºæ–­
QMX doctor --team  # Team/swarmè¨ºæ–­
QMX team ...       # tmuxãƒãƒ¼ãƒ ãƒ¯ãƒ¼ã‚«ãƒ¼ã®é–‹å§‹/ã‚¹ãƒ†ãƒ¼ã‚¿ã‚¹/å†é–‹/ã‚·ãƒ£ãƒƒãƒˆãƒ€ã‚¦ãƒ³
QMX status         # ã‚¢ã‚¯ãƒ†ã‚£ãƒ–ãªãƒ¢ãƒ¼ãƒ‰ã‚’è¡¨ç¤º
QMX cancel         # ã‚¢ã‚¯ãƒ†ã‚£ãƒ–ãªå®Ÿè¡Œãƒ¢ãƒ¼ãƒ‰ã‚’ã‚­ãƒ£ãƒ³ã‚»ãƒ«
QMX reasoning <mode> # low|medium|high|xhigh
QMX tmux-hook ...  # init|status|validate|test
QMX hooks ...      # init|status|validate|testï¼ˆãƒ—ãƒ©ã‚°ã‚¤ãƒ³æ‹¡å¼µãƒ¯ãƒ¼ã‚¯ãƒ•ãƒ­ãƒ¼ï¼‰
QMX hud ...        # --watch|--json|--preset
QMX help
```

## Hooksæ‹¡å¼µï¼ˆè¿½åŠ ã‚µãƒ¼ãƒ•ã‚§ã‚¹ï¼‰

QMXã«ã¯ãƒ—ãƒ©ã‚°ã‚¤ãƒ³ã®ã‚¹ã‚­ãƒ£ãƒ•ã‚©ãƒ¼ãƒ«ãƒ‡ã‚£ãƒ³ã‚°ã¨ãƒãƒªãƒ‡ãƒ¼ã‚·ãƒ§ãƒ³ç”¨ã®`QMX hooks`ãŒå«ã¾ã‚Œã‚‹ã‚ˆã†ã«ãªã‚Šã¾ã—ãŸã€‚

- `QMX tmux-hook`ã¯å¼•ãç¶šãã‚µãƒãƒ¼ãƒˆã•ã‚Œã€å¤‰æ›´ã•ã‚Œã¦ã„ã¾ã›ã‚“ã€‚
- `QMX hooks`ã¯è¿½åŠ çš„ã§ã‚ã‚Šã€tmux-hookãƒ¯ãƒ¼ã‚¯ãƒ•ãƒ­ãƒ¼ã‚’ç½®ãæ›ãˆã¾ã›ã‚“ã€‚
- ãƒ—ãƒ©ã‚°ã‚¤ãƒ³ãƒ•ã‚¡ã‚¤ãƒ«ã¯`.QMX/hooks/*.mjs`ã«é…ç½®ã•ã‚Œã¾ã™ã€‚
- ãƒ—ãƒ©ã‚°ã‚¤ãƒ³ã¯ãƒ‡ãƒ•ã‚©ãƒ«ãƒˆã§ç„¡åŠ¹ã§ã™ï¼›`QMX_HOOK_PLUGINS=1`ã§æœ‰åŠ¹ã«ã—ã¾ã™ã€‚

å®Œå…¨ãªæ‹¡å¼µãƒ¯ãƒ¼ã‚¯ãƒ•ãƒ­ãƒ¼ã¨ã‚¤ãƒ™ãƒ³ãƒˆãƒ¢ãƒ‡ãƒ«ã«ã¤ã„ã¦ã¯`docs/hooks-extension.md`ã‚’å‚ç…§ã—ã¦ãã ã•ã„ã€‚

## èµ·å‹•ãƒ•ãƒ©ã‚°

```bash
--yolo
--high
--xhigh
--madmax
--force
--dry-run
--verbose
--scope <user|project>  # setupã®ã¿
```

`--madmax`ã¯Codexã®`--dangerously-bypass-approvals-and-sandbox`ã«ãƒžãƒƒãƒ”ãƒ³ã‚°ã•ã‚Œã¾ã™ã€‚
ä¿¡é ¼ã•ã‚ŒãŸ/å¤–éƒ¨ã®ã‚µãƒ³ãƒ‰ãƒœãƒƒã‚¯ã‚¹ç’°å¢ƒã§ã®ã¿ä½¿ç”¨ã—ã¦ãã ã•ã„ã€‚

### MCP workingDirectoryãƒãƒªã‚·ãƒ¼ï¼ˆã‚ªãƒ—ã‚·ãƒ§ãƒ³ã®å¼·åŒ–ï¼‰

ãƒ‡ãƒ•ã‚©ãƒ«ãƒˆã§ã¯ã€MCP state/memory/traceãƒ„ãƒ¼ãƒ«ã¯å‘¼ã³å‡ºã—å…ƒãŒæä¾›ã™ã‚‹`workingDirectory`ã‚’å—ã‘å…¥ã‚Œã¾ã™ã€‚
ã“ã‚Œã‚’åˆ¶é™ã™ã‚‹ã«ã¯ã€è¨±å¯ã•ã‚ŒãŸãƒ«ãƒ¼ãƒˆã®ãƒªã‚¹ãƒˆã‚’è¨­å®šã—ã¾ã™ï¼š

```bash
export QMX_MCP_WORKDIR_ROOTS="/path/to/project:/path/to/another-root"
```

è¨­å®šã™ã‚‹ã¨ã€ã“ã‚Œã‚‰ã®ãƒ«ãƒ¼ãƒˆå¤–ã®`workingDirectory`å€¤ã¯æ‹’å¦ã•ã‚Œã¾ã™ã€‚

## Codex-Firstãƒ—ãƒ­ãƒ³ãƒ—ãƒˆåˆ¶å¾¡

ãƒ‡ãƒ•ã‚©ãƒ«ãƒˆã§ã¯ã€QMXã¯ä»¥ä¸‹ã‚’æ³¨å…¥ã—ã¾ã™ï¼š

```text
-c model_instructions_file="<cwd>/AGENTS.md"
```

ã“ã‚Œã¯`CODEX_HOME`ã®`AGENTS.md`ã¨ãƒ—ãƒ­ã‚¸ã‚§ã‚¯ãƒˆã®`AGENTS.md`ï¼ˆå­˜åœ¨ã™ã‚‹å ´åˆï¼‰ã‚’çµåˆã—ã€ãã®ä¸Šã«ãƒ©ãƒ³ã‚¿ã‚¤ãƒ ã‚ªãƒ¼ãƒãƒ¼ãƒ¬ã‚¤ã‚’è¿½åŠ ã—ã¾ã™ã€‚
Codexã®å‹•ä½œã‚’æ‹¡å¼µã—ã¾ã™ãŒã€Codexã®ã‚³ã‚¢ã‚·ã‚¹ãƒ†ãƒ ãƒãƒªã‚·ãƒ¼ã‚’ç½®ãæ›ãˆãŸã‚Šãƒã‚¤ãƒ‘ã‚¹ã—ãŸã‚Šã—ã¾ã›ã‚“ã€‚

åˆ¶å¾¡ï¼š

```bash
QMX_BYPASS_DEFAULT_SYSTEM_PROMPT=0 QMX     # AGENTS.mdæ³¨å…¥ã‚’ç„¡åŠ¹åŒ–
QMX_MODEL_INSTRUCTIONS_FILE=/path/to/instructions.md QMX
```

## ãƒãƒ¼ãƒ ãƒ¢ãƒ¼ãƒ‰

ä¸¦åˆ—ãƒ¯ãƒ¼ã‚«ãƒ¼ãŒæœ‰åˆ©ãªå¤§è¦æ¨¡ä½œæ¥­ã«ã¯ãƒãƒ¼ãƒ ãƒ¢ãƒ¼ãƒ‰ã‚’ä½¿ç”¨ã—ã¾ã™ã€‚

ãƒ©ã‚¤ãƒ•ã‚µã‚¤ã‚¯ãƒ«ï¼š

```text
start -> assign scoped lanes -> monitor -> verify terminal tasks -> shutdown
```

é‹ç”¨ã‚³ãƒžãƒ³ãƒ‰ï¼š

```bash
QMX team <args>
QMX team status <team-name>
QMX team resume <team-name>
QMX team shutdown <team-name>
```

é‡è¦ãªãƒ«ãƒ¼ãƒ«ï¼šä¸­æ–­ã™ã‚‹å ´åˆã‚’é™¤ãã€ã‚¿ã‚¹ã‚¯ãŒ`in_progress`çŠ¶æ…‹ã®é–“ã¯ã‚·ãƒ£ãƒƒãƒˆãƒ€ã‚¦ãƒ³ã—ãªã„ã§ãã ã•ã„ã€‚

### Team shutdown policy

Use `QMX team shutdown <team-name>` after the team reaches a terminal state.
Team cleanup now follows one standalone path; there is no separate `QMX team ralph ...` shutdown policy anymore.

ãƒãƒ¼ãƒ ãƒ¯ãƒ¼ã‚«ãƒ¼ç”¨ã®Worker CLIé¸æŠžï¼š

```bash
QMX_TEAM_WORKER_CLI=auto    # ãƒ‡ãƒ•ã‚©ãƒ«ãƒˆï¼›worker --modelã«"claude"ãŒå«ã¾ã‚Œã‚‹å ´åˆclaudeã‚’ä½¿ç”¨
QMX_TEAM_WORKER_CLI=codex   # Qwen Code CLIãƒ¯ãƒ¼ã‚«ãƒ¼ã‚’å¼·åˆ¶
QMX_TEAM_WORKER_CLI=claude  # Claude CLIãƒ¯ãƒ¼ã‚«ãƒ¼ã‚’å¼·åˆ¶
QMX_TEAM_WORKER_CLI_MAP=codex,codex,claude,claude  # ãƒ¯ãƒ¼ã‚«ãƒ¼ã”ã¨ã®CLIãƒŸãƒƒã‚¯ã‚¹ï¼ˆé•·ã•=1ã¾ãŸã¯ãƒ¯ãƒ¼ã‚«ãƒ¼æ•°ï¼‰
QMX_TEAM_AUTO_INTERRUPT_RETRY=0  # ã‚ªãƒ—ã‚·ãƒ§ãƒ³ï¼šé©å¿œåž‹queue->resendãƒ•ã‚©ãƒ¼ãƒ«ãƒãƒƒã‚¯ã‚’ç„¡åŠ¹åŒ–
```

æ³¨æ„ï¼š
- ãƒ¯ãƒ¼ã‚«ãƒ¼èµ·å‹•å¼•æ•°ã¯å¼•ãç¶šã`QMX_TEAM_WORKER_LAUNCH_ARGS`ã‚’é€šã˜ã¦å…±æœ‰ã•ã‚Œã¾ã™ã€‚
- `QMX_TEAM_WORKER_CLI_MAP`ã¯ãƒ¯ãƒ¼ã‚«ãƒ¼ã”ã¨ã®é¸æŠžã§`QMX_TEAM_WORKER_CLI`ã‚’ã‚ªãƒ¼ãƒãƒ¼ãƒ©ã‚¤ãƒ‰ã—ã¾ã™ã€‚
- ãƒˆãƒªã‚¬ãƒ¼é€ä¿¡ã¯ãƒ‡ãƒ•ã‚©ãƒ«ãƒˆã§é©å¿œåž‹ãƒªãƒˆãƒ©ã‚¤ã‚’ä½¿ç”¨ã—ã¾ã™ï¼ˆqueue/submitã€å¿…è¦ã«å¿œã˜ã¦å®‰å…¨ãªclear-line+resendãƒ•ã‚©ãƒ¼ãƒ«ãƒãƒƒã‚¯ï¼‰ã€‚
- Claude workerãƒ¢ãƒ¼ãƒ‰ã§ã¯ã€QMXã¯ãƒ¯ãƒ¼ã‚«ãƒ¼ã‚’ãƒ—ãƒ¬ãƒ¼ãƒ³ãª`claude`ã¨ã—ã¦èµ·å‹•ã—ï¼ˆè¿½åŠ ã®èµ·å‹•å¼•æ•°ãªã—ï¼‰ã€æ˜Žç¤ºçš„ãª`--model` / `--config` / `--effort`ã‚ªãƒ¼ãƒãƒ¼ãƒ©ã‚¤ãƒ‰ã‚’ç„¡è¦–ã—ã¦ã€ClaudeãŒãƒ‡ãƒ•ã‚©ãƒ«ãƒˆã®`settings.json`ã‚’ä½¿ç”¨ã—ã¾ã™ã€‚

## `QMX setup`ãŒæ›¸ãè¾¼ã‚€å†…å®¹

- `.QMX/setup-scope.json`ï¼ˆæ°¸ç¶šåŒ–ã•ã‚ŒãŸã‚»ãƒƒãƒˆã‚¢ãƒƒãƒ—ã‚¹ã‚³ãƒ¼ãƒ—ï¼‰
- ã‚¹ã‚³ãƒ¼ãƒ—ä¾å­˜ã®ã‚¤ãƒ³ã‚¹ãƒˆãƒ¼ãƒ«ï¼š
  - `user`ï¼š`~/.codex/prompts/`ã€`~/.codex/skills/`ã€`~/.codex/config.toml`ã€`~/.QMX/agents/`ã€`~/.codex/AGENTS.md`
  - `project`ï¼š`./.codex/prompts/`ã€`./.codex/skills/`ã€`./.codex/config.toml`ã€`./.QMX/agents/`ã€`./AGENTS.md`
- èµ·å‹•å‹•ä½œï¼šæ°¸ç¶šåŒ–ã•ã‚ŒãŸã‚¹ã‚³ãƒ¼ãƒ—ãŒ`project`ã®å ´åˆã€`QMX`èµ·å‹•æ™‚ã«è‡ªå‹•çš„ã«`CODEX_HOME=./.codex`ã‚’ä½¿ç”¨ï¼ˆ`CODEX_HOME`ãŒæ—¢ã«è¨­å®šã•ã‚Œã¦ã„ã‚‹å ´åˆã‚’é™¤ãï¼‰ã€‚
- èµ·å‹•å‘½ä»¤ã¯`~/.codex/AGENTS.md`ï¼ˆã¾ãŸã¯ä¸Šæ›¸ãã•ã‚ŒãŸ`CODEX_HOME/AGENTS.md`ï¼‰ã¨ãƒ—ãƒ­ã‚¸ã‚§ã‚¯ãƒˆã®`./AGENTS.md`ã‚’çµåˆã—ã€ãã®å¾Œãƒ©ãƒ³ã‚¿ã‚¤ãƒ ã‚ªãƒ¼ãƒãƒ¼ãƒ¬ã‚¤ã‚’è¿½åŠ ã—ã¦ä½¿ç”¨ã—ã¾ã™ã€‚
- æ—¢å­˜ã®`AGENTS.md`ã¯é»™ã£ã¦ä¸Šæ›¸ãã•ã‚Œã¾ã›ã‚“ã€‚ã‚¤ãƒ³ã‚¿ãƒ©ã‚¯ãƒ†ã‚£ãƒ–TTYã§ã¯ç½®ãæ›ãˆå‰ã«ç¢ºèªã—ã€éžã‚¤ãƒ³ã‚¿ãƒ©ã‚¯ãƒ†ã‚£ãƒ–å®Ÿè¡Œã§ã¯`--force`ãŒãªã„é™ã‚Šç½®ãæ›ãˆã‚’ã‚¹ã‚­ãƒƒãƒ—ã—ã¾ã™ï¼ˆã‚¢ã‚¯ãƒ†ã‚£ãƒ–ã‚»ãƒƒã‚·ãƒ§ãƒ³ã®å®‰å…¨ãƒã‚§ãƒƒã‚¯ã¯å¼•ãç¶šãé©ç”¨ã•ã‚Œã¾ã™ï¼‰ã€‚
- `config.toml`ã®æ›´æ–°ï¼ˆä¸¡ã‚¹ã‚³ãƒ¼ãƒ—å…±é€šï¼‰ï¼š
  - `notify = ["node", "..."]`
  - `model_reasoning_effort = "high"`
  - `developer_instructions = "..."`
  - `[features] multi_agent = true, child_agents_md = true`
  - MCPã‚µãƒ¼ãƒãƒ¼ã‚¨ãƒ³ãƒˆãƒªï¼ˆ`QMX_state`ã€`QMX_memory`ã€`QMX_code_intel`ã€`QMX_trace`ï¼‰
  - `[tui] status_line`
- ã‚¹ã‚³ãƒ¼ãƒ—åˆ¥`AGENTS.md`
- `.QMX/`ãƒ©ãƒ³ã‚¿ã‚¤ãƒ ãƒ‡ã‚£ãƒ¬ã‚¯ãƒˆãƒªã¨HUDè¨­å®š

## ã‚¨ãƒ¼ã‚¸ã‚§ãƒ³ãƒˆã¨ã‚¹ã‚­ãƒ«

- ãƒ—ãƒ­ãƒ³ãƒ—ãƒˆï¼š`prompts/*.md`ï¼ˆ`user`ã¯`~/.codex/prompts/`ã«ã€`project`ã¯`./.codex/prompts/`ã«ã‚¤ãƒ³ã‚¹ãƒˆãƒ¼ãƒ«ï¼‰
- ã‚¹ã‚­ãƒ«ï¼š`skills/*/SKILL.md`ï¼ˆ`user`ã¯`~/.codex/skills/`ã«ã€`project`ã¯`./.codex/skills/`ã«ã‚¤ãƒ³ã‚¹ãƒˆãƒ¼ãƒ«ï¼‰

ä¾‹ï¼š
- ã‚¨ãƒ¼ã‚¸ã‚§ãƒ³ãƒˆï¼š`architect`ã€`planner`ã€`executor`ã€`debugger`ã€`verifier`ã€`security-reviewer`
- ã‚¹ã‚­ãƒ«ï¼š`autopilot`ã€`plan`ã€`team`ã€`ralph`ã€`ultrawork`ã€`cancel`

## ãƒ—ãƒ­ã‚¸ã‚§ã‚¯ãƒˆæ§‹æˆ

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

## é–‹ç™º

```bash
git clone https://github.com/Yeachan-Heo/oh-my-qwen.git
cd oh-my-qwen
npm install
npm run build
npm test
```

## ãƒ‰ã‚­ãƒ¥ãƒ¡ãƒ³ãƒˆ

- **[å®Œå…¨ãªãƒ‰ã‚­ãƒ¥ãƒ¡ãƒ³ãƒˆ](https://yeachan-heo.github.io/oh-my-qwen-website/docs.html)** â€” å®Œå…¨ã‚¬ã‚¤ãƒ‰
- **[CLIãƒªãƒ•ã‚¡ãƒ¬ãƒ³ã‚¹](https://yeachan-heo.github.io/oh-my-qwen-website/docs.html#cli-reference)** â€” ã™ã¹ã¦ã®`QMX`ã‚³ãƒžãƒ³ãƒ‰ã€ãƒ•ãƒ©ã‚°ã€ãƒ„ãƒ¼ãƒ«
- **[é€šçŸ¥ã‚¬ã‚¤ãƒ‰](https://yeachan-heo.github.io/oh-my-qwen-website/docs.html#notifications)** â€” Discordã€Telegramã€Slackã€webhookã®è¨­å®š
- **[æŽ¨å¥¨ãƒ¯ãƒ¼ã‚¯ãƒ•ãƒ­ãƒ¼](https://yeachan-heo.github.io/oh-my-qwen-website/docs.html#workflows)** â€” ä¸€èˆ¬çš„ãªã‚¿ã‚¹ã‚¯ã®ãŸã‚ã®å®Ÿæˆ¦ã§æ¤œè¨¼ã•ã‚ŒãŸã‚¹ã‚­ãƒ«ãƒã‚§ãƒ¼ãƒ³
- **[ãƒªãƒªãƒ¼ã‚¹ãƒŽãƒ¼ãƒˆ](https://yeachan-heo.github.io/oh-my-qwen-website/docs.html#release-notes)** â€” å„ãƒãƒ¼ã‚¸ãƒ§ãƒ³ã®æ–°æ©Ÿèƒ½

## å‚™è€ƒ

- å®Œå…¨ãªå¤‰æ›´ãƒ­ã‚°ï¼š`CHANGELOG.md`
- ç§»è¡Œã‚¬ã‚¤ãƒ‰ï¼ˆv0.4.4ä»¥é™ã®mainlineï¼‰ï¼š`docs/migration-mainline-post-v0.4.4.md`
- ã‚«ãƒãƒ¬ãƒƒã‚¸ã¨ãƒ‘ãƒªãƒ†ã‚£ãƒŽãƒ¼ãƒˆï¼š`COVERAGE.md`
- Hookæ‹¡å¼µãƒ¯ãƒ¼ã‚¯ãƒ•ãƒ­ãƒ¼ï¼š`docs/hooks-extension.md`
- ã‚»ãƒƒãƒˆã‚¢ãƒƒãƒ—ã¨è²¢çŒ®ã®è©³ç´°ï¼š`CONTRIBUTING.md`

## è¬è¾ž

[oh-my-claudecode](https://github.com/Yeachan-Heo/oh-my-claudecode)ã«ã‚¤ãƒ³ã‚¹ãƒ‘ã‚¤ã‚¢ã•ã‚Œã€Qwen Code CLIå‘ã‘ã«é©å¿œã•ã‚Œã¾ã—ãŸã€‚

## ãƒ©ã‚¤ã‚»ãƒ³ã‚¹

MIT

