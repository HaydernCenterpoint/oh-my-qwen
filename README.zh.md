# oh-my-qwen (QMX)

<p align="center">
  <img src="https://yeachan-heo.github.io/oh-my-qwen-website/QMX-character-nobg.png" alt="oh-my-qwen character" width="280">
  <br>
  <em>ä½ çš„ codex å¹¶ä¸å­¤å•ã€‚</em>
</p>

[![npm version](https://img.shields.io/npm/v/oh-my-qwen)](https://www.npmjs.com/package/oh-my-qwen)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Node.js](https://img.shields.io/badge/node-%3E%3D20-brightgreen)](https://nodejs.org)
[![Discord](https://img.shields.io/discord/1452487457085063218?color=5865F2&logo=discord&logoColor=white&label=Discord)](https://discord.gg/PUwSMR9XNk)

> **[Website](https://yeachan-heo.github.io/oh-my-qwen-website/)** | **[Documentation](https://yeachan-heo.github.io/oh-my-qwen-website/docs.html)** | **[CLI Reference](https://yeachan-heo.github.io/oh-my-qwen-website/docs.html#cli-reference)** | **[Workflows](https://yeachan-heo.github.io/oh-my-qwen-website/docs.html#workflows)** | **[OpenClaw é›†æˆæŒ‡å—](./docs/openclaw-integration.zh.md)** | **[GitHub](https://github.com/Yeachan-Heo/oh-my-qwen)** | **[npm](https://www.npmjs.com/package/oh-my-qwen)**

[OpenAI Qwen Code CLI](https://github.com/openai/codex) çš„å¤šæ™ºèƒ½ä½“ç¼–æŽ’å±‚ã€‚

## v0.9.0 æ–°ç‰¹æ€§ â€” Spark Initiative

Spark Initiative æ˜¯ä¸€æ¬¡å¼ºåŒ– QMX åŽŸç”ŸæŽ¢ç´¢ä¸Žæ£€æŸ¥è·¯å¾„çš„ç‰ˆæœ¬å‘å¸ƒã€‚

- **`QMX explore` åŽŸç”Ÿ harness** â€”â€” é€šè¿‡ Rust åŽŸç”Ÿ harness æ›´å¿«ã€æ›´ä¸¥æ ¼åœ°æ‰§è¡Œåªè¯»ä»“åº“æŽ¢ç´¢ã€‚
- **`QMX sparkshell`** â€”â€” é¢å‘æ“ä½œè€…çš„åŽŸç”Ÿæ£€æŸ¥ç•Œé¢ï¼Œæ”¯æŒé•¿è¾“å‡ºæ‘˜è¦ä¸Ž tmux pane æ•èŽ·ã€‚
- **è·¨å¹³å°åŽŸç”Ÿå‘å¸ƒèµ„äº§** â€”â€” `QMX-explore-harness`ã€`QMX-sparkshell` ä¸Ž `native-release-manifest.json` çš„ hydration è·¯å¾„çŽ°å·²çº³å…¥å‘å¸ƒæµæ°´çº¿ã€‚
- **å¢žå¼ºçš„ CI/CD** â€”â€” ä¸º `build` job å¢žåŠ æ˜¾å¼ Rust toolchain è®¾ç½®ï¼Œå¹¶åŠ å…¥ `cargo fmt --check` ä¸Ž `cargo clippy -- -D warnings`ã€‚

è¯¦æƒ…è¯·å‚é˜… [v0.9.0 å‘å¸ƒè¯´æ˜Ž](./docs/release-notes-0.9.0.md) å’Œ [å‘å¸ƒæ­£æ–‡](./docs/release-body-0.9.0.md)ã€‚

## é¦–æ¬¡ä¼šè¯

åœ¨ Codex å†…éƒ¨ï¼š

```text
/prompts:architect "analyze current auth boundaries"
/prompts:executor "implement input validation in login"
$plan "ship OAuth callback safely"
$team 3:executor "fix all TypeScript errors"
```

ä»Žç»ˆç«¯ï¼š

```bash
QMX team 4:executor "parallelize a multi-module refactor"
QMX team status <team-name>
QMX team shutdown <team-name>
```

## æ ¸å¿ƒæ¨¡åž‹

QMX å®‰è£…å¹¶è¿žæŽ¥ä»¥ä¸‹å±‚ï¼š

```text
User
  -> Qwen Code CLI
    -> AGENTS.md (ç¼–æŽ’å¤§è„‘)
    -> ~/.codex/prompts/*.md (ä»£ç† prompt ç›®å½•)
    -> ~/.codex/skills/*/SKILL.md (skill ç›®å½•)
    -> ~/.codex/config.toml (åŠŸèƒ½ã€é€šçŸ¥ã€MCP)
    -> .QMX/ (è¿è¡Œæ—¶çŠ¶æ€ã€è®°å¿†ã€è®¡åˆ’ã€æ—¥å¿—)
```

## ä¸»è¦å‘½ä»¤

```bash
QMX                # å¯åŠ¨ Codexï¼ˆåœ¨ tmux ä¸­é™„å¸¦ HUDï¼‰
QMX setup          # æŒ‰ä½œç”¨åŸŸå®‰è£… prompt/skill/config + é¡¹ç›® .QMX + ä½œç”¨åŸŸä¸“å±ž AGENTS.md
QMX doctor         # å®‰è£…/è¿è¡Œæ—¶è¯Šæ–­
QMX doctor --team  # Team/swarm è¯Šæ–­
QMX team ...       # å¯åŠ¨/çŠ¶æ€/æ¢å¤/å…³é—­ tmux å›¢é˜Ÿ worker
QMX status         # æ˜¾ç¤ºæ´»åŠ¨æ¨¡å¼
QMX cancel         # å–æ¶ˆæ´»åŠ¨æ‰§è¡Œæ¨¡å¼
QMX reasoning <mode> # low|medium|high|xhigh
QMX tmux-hook ...  # init|status|validate|test
QMX hooks ...      # init|status|validate|testï¼ˆæ’ä»¶æ‰©å±•å·¥ä½œæµï¼‰
QMX hud ...        # --watch|--json|--preset
QMX help
```

## Hooks æ‰©å±•ï¼ˆé™„åŠ è¡¨é¢ï¼‰

QMX çŽ°åœ¨åŒ…å«ç”¨äºŽæ’ä»¶è„šæ‰‹æž¶å’ŒéªŒè¯çš„ `QMX hooks`ã€‚

- `QMX tmux-hook` ç»§ç»­æ”¯æŒä¸”æœªæ›´æ”¹ã€‚
- `QMX hooks` æ˜¯é™„åŠ çš„ï¼Œä¸ä¼šæ›¿ä»£ tmux-hook å·¥ä½œæµã€‚
- æ’ä»¶æ–‡ä»¶ä½äºŽ `.QMX/hooks/*.mjs`ã€‚
- æ’ä»¶é»˜è®¤å…³é—­ï¼›ä½¿ç”¨ `QMX_HOOK_PLUGINS=1` å¯ç”¨ã€‚

å®Œæ•´çš„æ‰©å±•å·¥ä½œæµå’Œäº‹ä»¶æ¨¡åž‹è¯·å‚é˜… `docs/hooks-extension.md`ã€‚

## å¯åŠ¨æ ‡å¿—

```bash
--yolo
--high
--xhigh
--madmax
--force
--dry-run
--verbose
--scope <user|project>  # ä»…ç”¨äºŽ setup
```

`--madmax` æ˜ å°„åˆ° Codex `--dangerously-bypass-approvals-and-sandbox`ã€‚
ä»…åœ¨å¯ä¿¡/å¤–éƒ¨æ²™ç®±çŽ¯å¢ƒä¸­ä½¿ç”¨ã€‚

### MCP workingDirectory ç­–ç•¥ï¼ˆå¯é€‰åŠ å›ºï¼‰

é»˜è®¤æƒ…å†µä¸‹ï¼ŒMCP state/memory/trace å·¥å…·æŽ¥å—è°ƒç”¨æ–¹æä¾›çš„ `workingDirectory`ã€‚
è¦é™åˆ¶æ­¤è¡Œä¸ºï¼Œè¯·è®¾ç½®å…è®¸çš„æ ¹ç›®å½•åˆ—è¡¨ï¼š

```bash
export QMX_MCP_WORKDIR_ROOTS="/path/to/project:/path/to/another-root"
```

è®¾ç½®åŽï¼Œè¶…å‡ºè¿™äº›æ ¹ç›®å½•çš„ `workingDirectory` å€¼å°†è¢«æ‹’ç»ã€‚

## Codex-First Prompt æŽ§åˆ¶

é»˜è®¤æƒ…å†µä¸‹ï¼ŒQMX æ³¨å…¥ï¼š

```text
-c model_instructions_file="<cwd>/AGENTS.md"
```

è¿™ä¼šå°† `CODEX_HOME` ä¸­çš„ `AGENTS.md` ä¸Žé¡¹ç›® `AGENTS.md`ï¼ˆå¦‚æžœå­˜åœ¨ï¼‰åˆå¹¶ï¼Œç„¶åŽå†é™„åŠ è¿è¡Œæ—¶ overlayã€‚
æ‰©å±• Codex è¡Œä¸ºï¼Œä½†ä¸ä¼šæ›¿æ¢/ç»•è¿‡ Codex æ ¸å¿ƒç³»ç»Ÿç­–ç•¥ã€‚

æŽ§åˆ¶ï¼š

```bash
QMX_BYPASS_DEFAULT_SYSTEM_PROMPT=0 QMX     # ç¦ç”¨ AGENTS.md æ³¨å…¥
QMX_MODEL_INSTRUCTIONS_FILE=/path/to/instructions.md QMX
```

## å›¢é˜Ÿæ¨¡å¼

å¯¹äºŽå—ç›ŠäºŽå¹¶è¡Œ worker çš„å¤§è§„æ¨¡å·¥ä½œï¼Œä½¿ç”¨å›¢é˜Ÿæ¨¡å¼ã€‚

ç”Ÿå‘½å‘¨æœŸï¼š

```text
start -> assign scoped lanes -> monitor -> verify terminal tasks -> shutdown
```

æ“ä½œå‘½ä»¤ï¼š

```bash
QMX team <args>
QMX team status <team-name>
QMX team resume <team-name>
QMX team shutdown <team-name>
```

é‡è¦è§„åˆ™ï¼šé™¤éžä¸­æ­¢ï¼Œå¦åˆ™ä¸è¦åœ¨ä»»åŠ¡ä»å¤„äºŽ `in_progress` çŠ¶æ€æ—¶å…³é—­ã€‚

### Team shutdown policy

Use `QMX team shutdown <team-name>` after the team reaches a terminal state.
Team cleanup now follows one standalone path; there is no separate `QMX team ralph ...` shutdown policy anymore.

å›¢é˜Ÿ worker çš„ Worker CLI é€‰æ‹©ï¼š

```bash
QMX_TEAM_WORKER_CLI=auto    # é»˜è®¤ï¼›å½“ worker --model åŒ…å« "claude" æ—¶ä½¿ç”¨ claude
QMX_TEAM_WORKER_CLI=codex   # å¼ºåˆ¶ Qwen Code CLI worker
QMX_TEAM_WORKER_CLI=claude  # å¼ºåˆ¶ Claude CLI worker
QMX_TEAM_WORKER_CLI_MAP=codex,codex,claude,claude  # æ¯ä¸ª worker çš„ CLI æ··åˆï¼ˆé•¿åº¦=1 æˆ– worker æ•°é‡ï¼‰
QMX_TEAM_AUTO_INTERRUPT_RETRY=0  # å¯é€‰ï¼šç¦ç”¨è‡ªé€‚åº” queue->resend å›žé€€
```

æ³¨æ„ï¼š
- Worker å¯åŠ¨å‚æ•°ä»é€šè¿‡ `QMX_TEAM_WORKER_LAUNCH_ARGS` å…±äº«ã€‚
- `QMX_TEAM_WORKER_CLI_MAP` è¦†ç›– `QMX_TEAM_WORKER_CLI` ä»¥å®žçŽ°æ¯ä¸ª worker çš„é€‰æ‹©ã€‚
- è§¦å‘å™¨æäº¤é»˜è®¤ä½¿ç”¨è‡ªé€‚åº”é‡è¯•ï¼ˆqueue/submitï¼Œéœ€è¦æ—¶ä½¿ç”¨å®‰å…¨çš„ clear-line+resend å›žé€€ï¼‰ã€‚
- åœ¨ Claude worker æ¨¡å¼ä¸‹ï¼ŒQMX ä»¥æ™®é€š `claude` å¯åŠ¨ workerï¼ˆæ— é¢å¤–å¯åŠ¨å‚æ•°ï¼‰ï¼Œå¹¶å¿½ç•¥æ˜¾å¼çš„ `--model` / `--config` / `--effort` è¦†ç›–ï¼Œä½¿ Claude ä½¿ç”¨é»˜è®¤ `settings.json`ã€‚

## `QMX setup` å†™å…¥çš„å†…å®¹

- `.QMX/setup-scope.json`ï¼ˆæŒä¹…åŒ–çš„è®¾ç½®ä½œç”¨åŸŸï¼‰
- ä¾èµ–ä½œç”¨åŸŸçš„å®‰è£…ï¼š
  - `user`ï¼š`~/.codex/prompts/`ã€`~/.codex/skills/`ã€`~/.codex/config.toml`ã€`~/.QMX/agents/`ã€`~/.codex/AGENTS.md`
  - `project`ï¼š`./.codex/prompts/`ã€`./.codex/skills/`ã€`./.codex/config.toml`ã€`./.QMX/agents/`ã€`./AGENTS.md`
- å¯åŠ¨è¡Œä¸ºï¼šå¦‚æžœæŒä¹…åŒ–çš„ä½œç”¨åŸŸæ˜¯ `project`ï¼Œ`QMX` å¯åŠ¨æ—¶è‡ªåŠ¨ä½¿ç”¨ `CODEX_HOME=./.codex`ï¼ˆé™¤éž `CODEX_HOME` å·²è®¾ç½®ï¼‰ã€‚
- å¯åŠ¨æŒ‡ä»¤ä¼šåˆå¹¶ `~/.codex/AGENTS.md`ï¼ˆæˆ–è¢«è¦†ç›–çš„ `CODEX_HOME/AGENTS.md`ï¼‰ä¸Žé¡¹ç›® `./AGENTS.md`ï¼Œç„¶åŽé™„åŠ è¿è¡Œæ—¶ overlayã€‚
- çŽ°æœ‰ `AGENTS.md` æ–‡ä»¶ç»ä¸ä¼šè¢«é™é»˜è¦†ç›–ï¼šäº¤äº’å¼ TTY ä¸‹ setup ä¼šå…ˆè¯¢é—®æ˜¯å¦æ›¿æ¢ï¼›éžäº¤äº’æ¨¡å¼ä¸‹é™¤éžä¼ å…¥ `--force`ï¼Œå¦åˆ™ä¼šè·³è¿‡æ›¿æ¢ï¼ˆæ´»åŠ¨ä¼šè¯å®‰å…¨æ£€æŸ¥ä»ç„¶é€‚ç”¨ï¼‰ã€‚
- `config.toml` æ›´æ–°ï¼ˆä¸¤ç§ä½œç”¨åŸŸå‡é€‚ç”¨ï¼‰ï¼š
  - `notify = ["node", "..."]`
  - `model_reasoning_effort = "high"`
  - `developer_instructions = "..."`
  - `[features] multi_agent = true, child_agents_md = true`
  - MCP æœåŠ¡å™¨æ¡ç›®ï¼ˆ`QMX_state`ã€`QMX_memory`ã€`QMX_code_intel`ã€`QMX_trace`ï¼‰
  - `[tui] status_line`
- ä½œç”¨åŸŸä¸“å±ž `AGENTS.md`
- `.QMX/` è¿è¡Œæ—¶ç›®å½•å’Œ HUD é…ç½®

## ä»£ç†å’ŒæŠ€èƒ½

- Promptï¼š`prompts/*.md`ï¼ˆ`user` å®‰è£…åˆ° `~/.codex/prompts/`ï¼Œ`project` å®‰è£…åˆ° `./.codex/prompts/`ï¼‰
- Skillï¼š`skills/*/SKILL.md`ï¼ˆ`user` å®‰è£…åˆ° `~/.codex/skills/`ï¼Œ`project` å®‰è£…åˆ° `./.codex/skills/`ï¼‰

ç¤ºä¾‹ï¼š
- ä»£ç†ï¼š`architect`ã€`planner`ã€`executor`ã€`debugger`ã€`verifier`ã€`security-reviewer`
- æŠ€èƒ½ï¼š`autopilot`ã€`plan`ã€`team`ã€`ralph`ã€`ultrawork`ã€`cancel`

## é¡¹ç›®ç»“æž„

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

## å¼€å‘

```bash
git clone https://github.com/Yeachan-Heo/oh-my-qwen.git
cd oh-my-qwen
npm install
npm run build
npm test
```

## æ–‡æ¡£

- **[å®Œæ•´æ–‡æ¡£](https://yeachan-heo.github.io/oh-my-qwen-website/docs.html)** â€” å®Œæ•´æŒ‡å—
- **[CLI å‚è€ƒ](https://yeachan-heo.github.io/oh-my-qwen-website/docs.html#cli-reference)** â€” æ‰€æœ‰ `QMX` å‘½ä»¤ã€æ ‡å¿—å’Œå·¥å…·
- **[é€šçŸ¥æŒ‡å—](https://yeachan-heo.github.io/oh-my-qwen-website/docs.html#notifications)** â€” Discordã€Telegramã€Slack å’Œ webhook è®¾ç½®
- **[æŽ¨èå·¥ä½œæµ](https://yeachan-heo.github.io/oh-my-qwen-website/docs.html#workflows)** â€” ç”¨äºŽå¸¸è§ä»»åŠ¡çš„ç»è¿‡å®žæˆ˜æ£€éªŒçš„ skill é“¾
- **[å‘è¡Œè¯´æ˜Ž](https://yeachan-heo.github.io/oh-my-qwen-website/docs.html#release-notes)** â€” æ¯ä¸ªç‰ˆæœ¬çš„æ–°åŠŸèƒ½

## å¤‡æ³¨

- å®Œæ•´å˜æ›´æ—¥å¿—ï¼š`CHANGELOG.md`
- è¿ç§»æŒ‡å—ï¼ˆv0.4.4 åŽçš„ mainlineï¼‰ï¼š`docs/migration-mainline-post-v0.4.4.md`
- è¦†ç›–çŽ‡å’Œå¯¹ç­‰è¯´æ˜Žï¼š`COVERAGE.md`
- Hook æ‰©å±•å·¥ä½œæµï¼š`docs/hooks-extension.md`
- è®¾ç½®å’Œè´¡çŒ®è¯¦æƒ…ï¼š`CONTRIBUTING.md`

## è‡´è°¢

å— [oh-my-claudecode](https://github.com/Yeachan-Heo/oh-my-claudecode) å¯å‘ï¼Œä¸º Qwen Code CLI é€‚é…ã€‚

## è®¸å¯è¯

MIT

