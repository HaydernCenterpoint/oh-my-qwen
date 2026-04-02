# oh-my-qwen (QMX)

<p align="center">
  <img src="https://yeachan-heo.github.io/oh-my-qwen-website/QMX-character-nobg.png" alt="oh-my-qwen character" width="280">
  <br>
  <em>ë‹¹ì‹ ì˜ codexëŠ” í˜¼ìžê°€ ì•„ë‹™ë‹ˆë‹¤.</em>
</p>

[![npm version](https://img.shields.io/npm/v/oh-my-qwen)](https://www.npmjs.com/package/oh-my-qwen)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Node.js](https://img.shields.io/badge/node-%3E%3D20-brightgreen)](https://nodejs.org)
[![Discord](https://img.shields.io/discord/1452487457085063218?color=5865F2&logo=discord&logoColor=white&label=Discord)](https://discord.gg/PUwSMR9XNk)

> **[Website](https://yeachan-heo.github.io/oh-my-qwen-website/)** | **[Documentation](https://yeachan-heo.github.io/oh-my-qwen-website/docs.html)** | **[CLI Reference](https://yeachan-heo.github.io/oh-my-qwen-website/docs.html#cli-reference)** | **[Workflows](https://yeachan-heo.github.io/oh-my-qwen-website/docs.html#workflows)** | **[OpenClaw í†µí•© ê°€ì´ë“œ](./docs/openclaw-integration.ko.md)** | **[GitHub](https://github.com/Yeachan-Heo/oh-my-qwen)** | **[npm](https://www.npmjs.com/package/oh-my-qwen)**

[OpenAI Qwen Code CLI](https://github.com/openai/codex)ë¥¼ ìœ„í•œ ë©€í‹° ì—ì´ì „íŠ¸ ì˜¤ì¼€ìŠ¤íŠ¸ë ˆì´ì…˜ ë ˆì´ì–´.

## v0.9.0 ìƒˆë¡œìš´ ê¸°ëŠ¥ â€” Spark Initiative

Spark InitiativeëŠ” QMXì˜ ë„¤ì´í‹°ë¸Œ íƒìƒ‰/ê²€ì‚¬ ê²½ë¡œë¥¼ ê°•í™”í•œ ë¦´ë¦¬ìŠ¤ìž…ë‹ˆë‹¤.

- **`QMX explore` ë„¤ì´í‹°ë¸Œ í•˜ë„¤ìŠ¤** â€” ì½ê¸° ì „ìš© ì €ìž¥ì†Œ íƒìƒ‰ì„ Rust ê¸°ë°˜ í•˜ë„¤ìŠ¤ë¡œ ë” ë¹ ë¥´ê³  ì—„ê²©í•˜ê²Œ ì‹¤í–‰í•©ë‹ˆë‹¤.
- **`QMX sparkshell`** â€” ê¸´ ì¶œë ¥ì„ ìš”ì•½í•˜ê³  tmux pane ìº¡ì²˜ë¥¼ ì§€ì›í•˜ëŠ” ìš´ì˜ìžìš© ë„¤ì´í‹°ë¸Œ ê²€ì‚¬ í‘œë©´ìž…ë‹ˆë‹¤.
- **í¬ë¡œìŠ¤ í”Œëž«í¼ ë„¤ì´í‹°ë¸Œ ë¦´ë¦¬ìŠ¤ ìžì‚°** â€” `QMX-explore-harness`, `QMX-sparkshell`, `native-release-manifest.json` ê¸°ë°˜ hydration ê²½ë¡œê°€ ë¦´ë¦¬ìŠ¤ íŒŒì´í”„ë¼ì¸ì— í¬í•¨ë©ë‹ˆë‹¤.
- **ê°•í™”ëœ CI/CD** â€” `build` jobì˜ ëª…ì‹œì  Rust toolchain ì„¤ì •, `cargo fmt --check`, `cargo clippy -- -D warnings`ê°€ ì¶”ê°€ë˜ì—ˆìŠµë‹ˆë‹¤.

ìžì„¸í•œ ë‚´ìš©ì€ [v0.9.0 ë¦´ë¦¬ìŠ¤ ë…¸íŠ¸](./docs/release-notes-0.9.0.md) ë° [ë¦´ë¦¬ìŠ¤ ë³¸ë¬¸](./docs/release-body-0.9.0.md)ì„ ì°¸ê³ í•˜ì„¸ìš”.

## ì²« ë²ˆì§¸ ì„¸ì…˜

Codex ë‚´ë¶€ì—ì„œ:

```text
$architect "analyze current auth boundaries"
$executor "implement input validation in login"
$plan "ship OAuth callback safely"
$team 3:executor "fix all TypeScript errors"
```

í„°ë¯¸ë„ì—ì„œ:

```bash
QMX team 4:executor "parallelize a multi-module refactor"
QMX team status <team-name>
QMX team shutdown <team-name>
```

## í•µì‹¬ ëª¨ë¸

QMXëŠ” ë‹¤ìŒ ë ˆì´ì–´ë¥¼ ì„¤ì¹˜í•˜ê³  ì—°ê²°í•©ë‹ˆë‹¤:

```text
User
  -> Qwen Code CLI
    -> AGENTS.md (ì˜¤ì¼€ìŠ¤íŠ¸ë ˆì´ì…˜ ë¸Œë ˆì¸)
    -> ~/.codex/prompts/*.md (ì—ì´ì „íŠ¸ í”„ë¡¬í”„íŠ¸ ì¹´íƒˆë¡œê·¸)
    -> ~/.codex/skills/*/SKILL.md (ìŠ¤í‚¬ ì¹´íƒˆë¡œê·¸)
    -> ~/.codex/config.toml (ê¸°ëŠ¥, ì•Œë¦¼, MCP)
    -> .QMX/ (ëŸ°íƒ€ìž„ ìƒíƒœ, ë©”ëª¨ë¦¬, ê³„íš, ë¡œê·¸)
```

## ì£¼ìš” ëª…ë ¹ì–´

```bash
QMX                # Codex ì‹¤í–‰ (tmuxì—ì„œ HUDì™€ í•¨ê»˜)
QMX setup          # ë²”ìœ„ë³„ í”„ë¡¬í”„íŠ¸/ìŠ¤í‚¬/ì„¤ì • ì„¤ì¹˜ + í”„ë¡œì íŠ¸ .QMX + ë²”ìœ„ë³„ AGENTS.md
QMX doctor         # ì„¤ì¹˜/ëŸ°íƒ€ìž„ ì§„ë‹¨
QMX doctor --team  # Team/swarm ì§„ë‹¨
QMX team ...       # tmux íŒ€ ì›Œì»¤ ì‹œìž‘/ìƒíƒœ/ìž¬ê°œ/ì¢…ë£Œ
QMX status         # í™œì„± ëª¨ë“œ í‘œì‹œ
QMX cancel         # í™œì„± ì‹¤í–‰ ëª¨ë“œ ì·¨ì†Œ
QMX reasoning <mode> # low|medium|high|xhigh
QMX tmux-hook ...  # init|status|validate|test
QMX hooks ...      # init|status|validate|test (í”ŒëŸ¬ê·¸ì¸ í™•ìž¥ ì›Œí¬í”Œë¡œìš°)
QMX hud ...        # --watch|--json|--preset
QMX help
```

## Hooks í™•ìž¥ (ì¶”ê°€ í‘œë©´)

QMXëŠ” ì´ì œ í”ŒëŸ¬ê·¸ì¸ ìŠ¤ìºí´ë”© ë° ê²€ì¦ì„ ìœ„í•œ `QMX hooks`ë¥¼ í¬í•¨í•©ë‹ˆë‹¤.

- `QMX tmux-hook`ì€ ê³„ì† ì§€ì›ë˜ë©° ë³€ê²½ë˜ì§€ ì•Šì•˜ìŠµë‹ˆë‹¤.
- `QMX hooks`ëŠ” ì¶”ê°€ì ì´ë©° tmux-hook ì›Œí¬í”Œë¡œìš°ë¥¼ ëŒ€ì²´í•˜ì§€ ì•ŠìŠµë‹ˆë‹¤.
- í”ŒëŸ¬ê·¸ì¸ íŒŒì¼ì€ `.QMX/hooks/*.mjs`ì— ìœ„ì¹˜í•©ë‹ˆë‹¤.
- í”ŒëŸ¬ê·¸ì¸ì€ ê¸°ë³¸ì ìœ¼ë¡œ ë¹„í™œì„±í™”ë˜ì–´ ìžˆìœ¼ë©°; `QMX_HOOK_PLUGINS=1`ë¡œ í™œì„±í™”í•©ë‹ˆë‹¤.

ì „ì²´ í™•ìž¥ ì›Œí¬í”Œë¡œìš° ë° ì´ë²¤íŠ¸ ëª¨ë¸ì€ `docs/hooks-extension.md`ë¥¼ ì°¸ì¡°í•˜ì„¸ìš”.

## ì‹œìž‘ í”Œëž˜ê·¸

```bash
--yolo
--high
--xhigh
--madmax
--force
--dry-run
--verbose
--scope <user|project>  # setup ì „ìš©
```

`--madmax`ëŠ” Codex `--dangerously-bypass-approvals-and-sandbox`ì— ë§¤í•‘ë©ë‹ˆë‹¤.
ì‹ ë¢°í•  ìˆ˜ ìžˆëŠ”/ì™¸ë¶€ sandbox í™˜ê²½ì—ì„œë§Œ ì‚¬ìš©í•˜ì„¸ìš”.

### MCP workingDirectory ì •ì±… (ì„ íƒì  ê°•í™”)

ê¸°ë³¸ì ìœ¼ë¡œ MCP state/memory/trace ë„êµ¬ëŠ” í˜¸ì¶œìžê°€ ì œê³µí•œ `workingDirectory`ë¥¼ ìˆ˜ë½í•©ë‹ˆë‹¤.
ì´ë¥¼ ì œí•œí•˜ë ¤ë©´ í—ˆìš©ëœ ë£¨íŠ¸ ëª©ë¡ì„ ì„¤ì •í•˜ì„¸ìš”:

```bash
export QMX_MCP_WORKDIR_ROOTS="/path/to/project:/path/to/another-root"
```

ì„¤ì • ì‹œ ì´ ë£¨íŠ¸ ì™¸ë¶€ì˜ `workingDirectory` ê°’ì€ ê±°ë¶€ë©ë‹ˆë‹¤.

## Codex-First í”„ë¡¬í”„íŠ¸ ì œì–´

ê¸°ë³¸ì ìœ¼ë¡œ QMXëŠ” ë‹¤ìŒì„ ì£¼ìž…í•©ë‹ˆë‹¤:

```text
-c model_instructions_file="<cwd>/AGENTS.md"
```

ì´ê²ƒì€ `CODEX_HOME`ì˜ `AGENTS.md`ì™€ í”„ë¡œì íŠ¸ `AGENTS.md`(ìžˆëŠ” ê²½ìš°)ë¥¼ ë³‘í•©í•œ ë’¤ ëŸ°íƒ€ìž„ ì˜¤ë²„ë ˆì´ë¥¼ ì¶”ê°€í•©ë‹ˆë‹¤.
Codex ë™ìž‘ì„ í™•ìž¥í•˜ì§€ë§Œ, Codex í•µì‹¬ ì‹œìŠ¤í…œ ì •ì±…ì„ ëŒ€ì²´/ìš°íšŒí•˜ì§€ ì•ŠìŠµë‹ˆë‹¤.

ì œì–´:

```bash
QMX_BYPASS_DEFAULT_SYSTEM_PROMPT=0 QMX     # AGENTS.md ì£¼ìž… ë¹„í™œì„±í™”
QMX_MODEL_INSTRUCTIONS_FILE=/path/to/instructions.md QMX
```

## íŒ€ ëª¨ë“œ

ë³‘ë ¬ ì›Œì»¤ê°€ ìœ ë¦¬í•œ ëŒ€ê·œëª¨ ìž‘ì—…ì— íŒ€ ëª¨ë“œë¥¼ ì‚¬ìš©í•©ë‹ˆë‹¤.

ë¼ì´í”„ì‚¬ì´í´:

```text
start -> assign scoped lanes -> monitor -> verify terminal tasks -> shutdown
```

ìš´ì˜ ëª…ë ¹ì–´:

```bash
QMX team <args>
QMX team status <team-name>
QMX team resume <team-name>
QMX team shutdown <team-name>
```

ì¤‘ìš” ê·œì¹™: ì¤‘ë‹¨í•˜ëŠ” ê²½ìš°ê°€ ì•„ë‹ˆë¼ë©´ ìž‘ì—…ì´ `in_progress` ìƒíƒœì¸ ë™ì•ˆ ì¢…ë£Œí•˜ì§€ ë§ˆì„¸ìš”.

### Team shutdown policy

Use `QMX team shutdown <team-name>` after the team reaches a terminal state.
Team cleanup now follows one standalone path; there is no separate `QMX team ralph ...` shutdown policy anymore.

íŒ€ ì›Œì»¤ë¥¼ ìœ„í•œ Worker CLI ì„ íƒ:

```bash
QMX_TEAM_WORKER_CLI=auto    # ê¸°ë³¸ê°’; worker --modelì— "claude"ê°€ í¬í•¨ë˜ë©´ claude ì‚¬ìš©
QMX_TEAM_WORKER_CLI=codex   # Qwen Code CLI ì›Œì»¤ ê°•ì œ
QMX_TEAM_WORKER_CLI=claude  # Claude CLI ì›Œì»¤ ê°•ì œ
QMX_TEAM_WORKER_CLI_MAP=codex,codex,claude,claude  # ì›Œì»¤ë³„ CLI í˜¼í•© (ê¸¸ì´=1 ë˜ëŠ” ì›Œì»¤ ìˆ˜)
QMX_TEAM_AUTO_INTERRUPT_RETRY=0  # ì„ íƒ: ì ì‘í˜• queue->resend í´ë°± ë¹„í™œì„±í™”
```

ì°¸ê³ :
- ì›Œì»¤ ì‹œìž‘ ì¸ìˆ˜ëŠ” ì—¬ì „ížˆ `QMX_TEAM_WORKER_LAUNCH_ARGS`ë¥¼ í†µí•´ ê³µìœ ë©ë‹ˆë‹¤.
- `QMX_TEAM_WORKER_CLI_MAP`ì€ ì›Œì»¤ë³„ ì„ íƒì„ ìœ„í•´ `QMX_TEAM_WORKER_CLI`ë¥¼ ìž¬ì •ì˜í•©ë‹ˆë‹¤.
- íŠ¸ë¦¬ê±° ì œì¶œì€ ê¸°ë³¸ì ìœ¼ë¡œ ì ì‘í˜• ìž¬ì‹œë„ë¥¼ ì‚¬ìš©í•©ë‹ˆë‹¤ (queue/submit, í•„ìš”ì‹œ ì•ˆì „í•œ clear-line+resend í´ë°±).
- Claude worker ëª¨ë“œì—ì„œ QMXëŠ” ì›Œì»¤ë¥¼ ì¼ë°˜ `claude`ë¡œ ì‹œìž‘í•˜ê³  (ì¶”ê°€ ì‹œìž‘ ì¸ìˆ˜ ì—†ìŒ) ëª…ì‹œì ì¸ `--model` / `--config` / `--effort` ìž¬ì •ì˜ë¥¼ ë¬´ì‹œí•˜ì—¬ Claudeê°€ ê¸°ë³¸ `settings.json`ì„ ì‚¬ìš©í•©ë‹ˆë‹¤.

## `QMX setup`ì´ ìž‘ì„±í•˜ëŠ” ê²ƒ

- `.QMX/setup-scope.json` (ì €ìž¥ëœ ì„¤ì • ë²”ìœ„)
- ë²”ìœ„ì— ë”°ë¥¸ ì„¤ì¹˜:
  - `user`: `~/.codex/prompts/`, `~/.codex/skills/`, `~/.codex/config.toml`, `~/.QMX/agents/`, `~/.codex/AGENTS.md`
  - `project`: `./.codex/prompts/`, `./.codex/skills/`, `./.codex/config.toml`, `./.QMX/agents/`, `./AGENTS.md`
- ì‹œìž‘ ë™ìž‘: ì €ìž¥ëœ ë²”ìœ„ê°€ `project`ì´ë©´, `QMX` ì‹œìž‘ ì‹œ ìžë™ìœ¼ë¡œ `CODEX_HOME=./.codex`ë¥¼ ì‚¬ìš©í•©ë‹ˆë‹¤ (`CODEX_HOME`ì´ ì´ë¯¸ ì„¤ì •ë˜ì§€ ì•Šì€ ê²½ìš°).
- ì‹œìž‘ ì§€ì¹¨ì€ `~/.codex/AGENTS.md`(ë˜ëŠ” `CODEX_HOME/AGENTS.md`)ì™€ í”„ë¡œì íŠ¸ `./AGENTS.md`ë¥¼ ë³‘í•©í•œ ë’¤ ëŸ°íƒ€ìž„ ì˜¤ë²„ë ˆì´ë¥¼ ì¶”ê°€í•´ ì‚¬ìš©í•©ë‹ˆë‹¤.
- ê¸°ì¡´ `AGENTS.md`ëŠ” ìžë™ìœ¼ë¡œ ë®ì–´ì“°ì§€ ì•ŠìŠµë‹ˆë‹¤. ëŒ€í™”í˜• TTY ì‹¤í–‰ì—ì„œëŠ” ë®ì–´ì“¸ì§€ í™•ì¸í•˜ê³ , ë¹„ëŒ€í™”í˜• ì‹¤í–‰ì—ì„œëŠ” `--force`ê°€ ì—†ìœ¼ë©´ ê±´ë„ˆëœë‹ˆë‹¤ (í™œì„± ì„¸ì…˜ ì•ˆì „ ê²€ì‚¬ëŠ” ì—¬ì „ížˆ ì ìš©ë©ë‹ˆë‹¤).
- `config.toml` ì—…ë°ì´íŠ¸ (ë‘ ë²”ìœ„ ëª¨ë‘):
  - `notify = ["node", "..."]`
  - `model_reasoning_effort = "high"`
  - `developer_instructions = "..."`
  - `[features] multi_agent = true, child_agents_md = true`
  - MCP ì„œë²„ í•­ëª© (`QMX_state`, `QMX_memory`, `QMX_code_intel`, `QMX_trace`)
  - `[tui] status_line`
- ë²”ìœ„ë³„ `AGENTS.md`
- `.QMX/` ëŸ°íƒ€ìž„ ë””ë ‰í† ë¦¬ ë° HUD ì„¤ì •

## ì—ì´ì „íŠ¸ì™€ ìŠ¤í‚¬

- í”„ë¡¬í”„íŠ¸: `prompts/*.md` (`user`ëŠ” `~/.codex/prompts/`ì—, `project`ëŠ” `./.codex/prompts/`ì— ì„¤ì¹˜)
- ìŠ¤í‚¬: `skills/*/SKILL.md` (`user`ëŠ” `~/.codex/skills/`ì—, `project`ëŠ” `./.codex/skills/`ì— ì„¤ì¹˜)

ì˜ˆì‹œ:
- ì—ì´ì „íŠ¸: `architect`, `planner`, `executor`, `debugger`, `verifier`, `security-reviewer`
- ìŠ¤í‚¬: `autopilot`, `plan`, `team`, `ralph`, `ultrawork`, `cancel`

## í”„ë¡œì íŠ¸ êµ¬ì¡°

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

## ê°œë°œ

```bash
git clone https://github.com/Yeachan-Heo/oh-my-qwen.git
cd oh-my-qwen
npm install
npm run build
npm test
```

## ë¬¸ì„œ

- **[ì „ì²´ ë¬¸ì„œ](https://yeachan-heo.github.io/oh-my-qwen-website/docs.html)** â€” ì™„ì „í•œ ê°€ì´ë“œ
- **[CLI ë ˆí¼ëŸ°ìŠ¤](https://yeachan-heo.github.io/oh-my-qwen-website/docs.html#cli-reference)** â€” ëª¨ë“  `QMX` ëª…ë ¹ì–´, í”Œëž˜ê·¸ ë° ë„êµ¬
- **[ì•Œë¦¼ ê°€ì´ë“œ](https://yeachan-heo.github.io/oh-my-qwen-website/docs.html#notifications)** â€” Discord, Telegram, Slack ë° webhook ì„¤ì •
- **[ê¶Œìž¥ ì›Œí¬í”Œë¡œìš°](https://yeachan-heo.github.io/oh-my-qwen-website/docs.html#workflows)** â€” ì¼ë°˜ì ì¸ ìž‘ì—…ì„ ìœ„í•œ ì‹¤ì „ ê²€ì¦ëœ ìŠ¤í‚¬ ì²´ì¸
- **[ë¦´ë¦¬ìŠ¤ ë…¸íŠ¸](https://yeachan-heo.github.io/oh-my-qwen-website/docs.html#release-notes)** â€” ê° ë²„ì „ì˜ ìƒˆë¡œìš´ ê¸°ëŠ¥

## ì°¸ê³ 

- ì „ì²´ ë³€ê²½ ë¡œê·¸: `CHANGELOG.md`
- ë§ˆì´ê·¸ë ˆì´ì…˜ ê°€ì´ë“œ (v0.4.4 ì´í›„ mainline): `docs/migration-mainline-post-v0.4.4.md`
- ì»¤ë²„ë¦¬ì§€ ë° íŒ¨ë¦¬í‹° ë…¸íŠ¸: `COVERAGE.md`
- Hook í™•ìž¥ ì›Œí¬í”Œë¡œìš°: `docs/hooks-extension.md`
- ì„¤ì • ë° ê¸°ì—¬ ì„¸ë¶€ì‚¬í•­: `CONTRIBUTING.md`

## ê°ì‚¬ì˜ ë§

[oh-my-claudecode](https://github.com/Yeachan-Heo/oh-my-claudecode)ì—ì„œ ì˜ê°ì„ ë°›ì•„ Qwen Code CLIìš©ìœ¼ë¡œ ì ì‘í•˜ì˜€ìŠµë‹ˆë‹¤.

## ë¼ì´ì„ ìŠ¤

MIT

