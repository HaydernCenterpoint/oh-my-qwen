# oh-my-qwen (QMX)

<p align="center">
  <img src="https://yeachan-heo.github.io/oh-my-qwen-website/QMX-character-nobg.png" alt="oh-my-qwen character" width="280">
  <br>
  <em>Codex cá»§a báº¡n khÃ´ng Ä‘Æ¡n Ä‘á»™c.</em>
</p>

[![npm version](https://img.shields.io/npm/v/oh-my-qwen)](https://www.npmjs.com/package/oh-my-qwen)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Node.js](https://img.shields.io/badge/node-%3E%3D20-brightgreen)](https://nodejs.org)
[![Discord](https://img.shields.io/discord/1452487457085063218?color=5865F2&logo=discord&logoColor=white&label=Discord)](https://discord.gg/PUwSMR9XNk)

> **[Website](https://yeachan-heo.github.io/oh-my-qwen-website/)** | **[Documentation](https://yeachan-heo.github.io/oh-my-qwen-website/docs.html)** | **[CLI Reference](https://yeachan-heo.github.io/oh-my-qwen-website/docs.html#cli-reference)** | **[Workflows](https://yeachan-heo.github.io/oh-my-qwen-website/docs.html#workflows)** | **[HÆ°á»›ng dáº«n tÃ­ch há»£p OpenClaw](./docs/openclaw-integration.vi.md)** | **[GitHub](https://github.com/Yeachan-Heo/oh-my-qwen)** | **[npm](https://www.npmjs.com/package/oh-my-qwen)**

Lá»›p Ä‘iá»u phá»‘i Ä‘a tÃ¡c nhÃ¢n cho [OpenAI Qwen Code CLI](https://github.com/openai/codex).

## Äiá»ƒm má»›i trong v0.9.0 â€” Spark Initiative

Spark Initiative lÃ  báº£n phÃ¡t hÃ nh tÄƒng cÆ°á»ng Ä‘Æ°á»ng Ä‘i native cho khÃ¡m phÃ¡ vÃ  kiá»ƒm tra trong QMX.

- **Native harness cho `QMX explore`** â€” cháº¡y khÃ¡m phÃ¡ kho mÃ£ chá»‰ Ä‘á»c nhanh hÆ¡n vÃ  cháº·t cháº½ hÆ¡n báº±ng harness Rust.
- **`QMX sparkshell`** â€” bá» máº·t kiá»ƒm tra native cho operator, há»— trá»£ tÃ³m táº¯t Ä‘áº§u ra dÃ i vÃ  chá»¥p tmux pane.
- **TÃ i sáº£n phÃ¡t hÃ nh native Ä‘a ná»n táº£ng** â€” Ä‘Æ°á»ng hydration cho `QMX-explore-harness`, `QMX-sparkshell` vÃ  `native-release-manifest.json` nay Ä‘Ã£ náº±m trong pipeline phÃ¡t hÃ nh.
- **CI/CD Ä‘Æ°á»£c tÄƒng cÆ°á»ng** â€” thÃªm thiáº¿t láº­p Rust toolchain tÆ°á»ng minh cho `build` job cÃ¹ng vá»›i `cargo fmt --check` vÃ  `cargo clippy -- -D warnings`.

Xem thÃªm táº¡i [ghi chÃº phÃ¡t hÃ nh v0.9.0](./docs/release-notes-0.9.0.md) vÃ  [release body](./docs/release-body-0.9.0.md).

## PhiÃªn Ä‘áº§u tiÃªn

Trong Codex:

```text
/prompts:architect "analyze current auth boundaries"
/prompts:executor "implement input validation in login"
$plan "ship OAuth callback safely"
$team 3:executor "fix all TypeScript errors"
```

Tá»« terminal:

```bash
QMX team 4:executor "parallelize a multi-module refactor"
QMX team status <team-name>
QMX team shutdown <team-name>
```

## MÃ´ hÃ¬nh cá»‘t lÃµi

QMX cÃ i Ä‘áº·t vÃ  káº¿t ná»‘i cÃ¡c lá»›p sau:

```text
User
  -> Qwen Code CLI
    -> AGENTS.md (bá»™ nÃ£o Ä‘iá»u phá»‘i)
    -> ~/.codex/prompts/*.md (danh má»¥c prompt tÃ¡c nhÃ¢n)
    -> ~/.codex/skills/*/SKILL.md (danh má»¥c skill)
    -> ~/.codex/config.toml (tÃ­nh nÄƒng, thÃ´ng bÃ¡o, MCP)
    -> .QMX/ (tráº¡ng thÃ¡i runtime, bá»™ nhá»›, káº¿ hoáº¡ch, nháº­t kÃ½)
```

## CÃ¡c lá»‡nh chÃ­nh

```bash
QMX                # Khá»Ÿi cháº¡y Codex (+ HUD trong tmux khi cÃ³ sáºµn)
QMX setup          # CÃ i Ä‘áº·t prompt/skill/config theo pháº¡m vi + .QMX cá»§a dá»± Ã¡n + AGENTS.md theo pháº¡m vi
QMX doctor         # Cháº©n Ä‘oÃ¡n cÃ i Ä‘áº·t/runtime
QMX doctor --team  # Cháº©n Ä‘oÃ¡n Team/swarm
QMX team ...       # Khá»Ÿi Ä‘á»™ng/tráº¡ng thÃ¡i/tiáº¿p tá»¥c/táº¯t worker tmux cá»§a Ä‘á»™i
QMX status         # Hiá»ƒn thá»‹ cÃ¡c cháº¿ Ä‘á»™ Ä‘ang hoáº¡t Ä‘á»™ng
QMX cancel         # Há»§y cÃ¡c cháº¿ Ä‘á»™ thá»±c thi Ä‘ang hoáº¡t Ä‘á»™ng
QMX reasoning <mode> # low|medium|high|xhigh
QMX tmux-hook ...  # init|status|validate|test
QMX hooks ...      # init|status|validate|test (quy trÃ¬nh má»Ÿ rá»™ng plugin)
QMX hud ...        # --watch|--json|--preset
QMX help
```

## Má»Ÿ rá»™ng Hooks (Bá» máº·t bá»• sung)

QMX hiá»‡n bao gá»“m `QMX hooks` cho scaffolding vÃ  xÃ¡c thá»±c plugin.

- `QMX tmux-hook` váº«n Ä‘Æ°á»£c há»— trá»£ vÃ  khÃ´ng thay Ä‘á»•i.
- `QMX hooks` lÃ  bá»• sung vÃ  khÃ´ng thay tháº¿ quy trÃ¬nh tmux-hook.
- Tá»‡p plugin náº±m táº¡i `.QMX/hooks/*.mjs`.
- Plugin táº¯t theo máº·c Ä‘á»‹nh; kÃ­ch hoáº¡t báº±ng `QMX_HOOK_PLUGINS=1`.

Xem `docs/hooks-extension.md` cho quy trÃ¬nh má»Ÿ rá»™ng Ä‘áº§y Ä‘á»§ vÃ  mÃ´ hÃ¬nh sá»± kiá»‡n.

## Cá» khá»Ÿi cháº¡y

```bash
--yolo
--high
--xhigh
--madmax
--force
--dry-run
--verbose
--scope <user|project>  # chá»‰ dÃ nh cho setup
```

`--madmax` Ã¡nh xáº¡ Ä‘áº¿n Codex `--dangerously-bypass-approvals-and-sandbox`.
Chá»‰ sá»­ dá»¥ng trong mÃ´i trÆ°á»ng sandbox tin cáº­y hoáº·c bÃªn ngoÃ i.

### ChÃ­nh sÃ¡ch workingDirectory MCP (tÄƒng cÆ°á»ng tÃ¹y chá»n)

Theo máº·c Ä‘á»‹nh, cÃ¡c cÃ´ng cá»¥ MCP state/memory/trace cháº¥p nháº­n `workingDirectory` do ngÆ°á»i gá»i cung cáº¥p.
Äá»ƒ háº¡n cháº¿ Ä‘iá»u nÃ y, Ä‘áº·t danh sÃ¡ch gá»‘c Ä‘Æ°á»£c phÃ©p:

```bash
export QMX_MCP_WORKDIR_ROOTS="/path/to/project:/path/to/another-root"
```

Khi Ä‘Æ°á»£c Ä‘áº·t, cÃ¡c giÃ¡ trá»‹ `workingDirectory` ngoÃ i cÃ¡c gá»‘c nÃ y sáº½ bá»‹ tá»« chá»‘i.

## Kiá»ƒm soÃ¡t Prompt Codex-First

Theo máº·c Ä‘á»‹nh, QMX tiÃªm:

```text
-c model_instructions_file="<cwd>/AGENTS.md"
```

Äiá»u nÃ y káº¿t há»£p `AGENTS.md` trong `CODEX_HOME` vá»›i `AGENTS.md` cá»§a dá»± Ã¡n (náº¿u cÃ³), rá»“i thÃªm lá»›p phá»§ runtime.
Má»Ÿ rá»™ng hÃ nh vi Codex, nhÆ°ng khÃ´ng thay tháº¿/bá» qua cÃ¡c chÃ­nh sÃ¡ch há»‡ thá»‘ng cá»‘t lÃµi cá»§a Codex.

Äiá»u khiá»ƒn:

```bash
QMX_BYPASS_DEFAULT_SYSTEM_PROMPT=0 QMX     # táº¯t tiÃªm AGENTS.md
QMX_MODEL_INSTRUCTIONS_FILE=/path/to/instructions.md QMX
```

## Cháº¿ Ä‘á»™ Ä‘á»™i

Sá»­ dá»¥ng cháº¿ Ä‘á»™ Ä‘á»™i cho cÃ´ng viá»‡c lá»›n Ä‘Æ°á»£c hÆ°á»Ÿng lá»£i tá»« worker song song.

VÃ²ng Ä‘á»i:

```text
start -> assign scoped lanes -> monitor -> verify terminal tasks -> shutdown
```

CÃ¡c lá»‡nh váº­n hÃ nh:

```bash
QMX team <args>
QMX team status <team-name>
QMX team resume <team-name>
QMX team shutdown <team-name>
```

Quy táº¯c quan trá»ng: khÃ´ng táº¯t khi cÃ¡c tÃ¡c vá»¥ váº«n Ä‘ang á»Ÿ tráº¡ng thÃ¡i `in_progress` trá»« khi Ä‘ang há»§y bá».

### Team shutdown policy

Use `QMX team shutdown <team-name>` after the team reaches a terminal state.
Team cleanup now follows one standalone path; there is no separate `QMX team ralph ...` shutdown policy anymore.

Chá»n Worker CLI cho worker cá»§a Ä‘á»™i:

```bash
QMX_TEAM_WORKER_CLI=auto    # máº·c Ä‘á»‹nh; sá»­ dá»¥ng claude khi worker --model chá»©a "claude"
QMX_TEAM_WORKER_CLI=codex   # Ã©p buá»™c worker Qwen Code CLI
QMX_TEAM_WORKER_CLI=claude  # Ã©p buá»™c worker Claude CLI
QMX_TEAM_WORKER_CLI_MAP=codex,codex,claude,claude  # há»—n há»£p CLI theo worker (Ä‘á»™ dÃ i=1 hoáº·c sá»‘ worker)
QMX_TEAM_AUTO_INTERRUPT_RETRY=0  # tÃ¹y chá»n: táº¯t fallback thÃ­ch á»©ng queue->resend
```

LÆ°u Ã½:
- Tham sá»‘ khá»Ÿi cháº¡y worker váº«n Ä‘Æ°á»£c chia sáº» qua `QMX_TEAM_WORKER_LAUNCH_ARGS`.
- `QMX_TEAM_WORKER_CLI_MAP` ghi Ä‘Ã¨ `QMX_TEAM_WORKER_CLI` cho lá»±a chá»n theo worker.
- Gá»­i trigger sá»­ dá»¥ng thá»­ láº¡i thÃ­ch á»©ng theo máº·c Ä‘á»‹nh (queue/submit, sau Ä‘Ã³ fallback an toÃ n clear-line+resend khi cáº§n).
- Trong cháº¿ Ä‘á»™ Claude worker, QMX khá»Ÿi cháº¡y worker dÆ°á»›i dáº¡ng `claude` thuáº§n tÃºy (khÃ´ng cÃ³ tham sá»‘ khá»Ÿi cháº¡y thÃªm) vÃ  bá» qua cÃ¡c ghi Ä‘Ã¨ rÃµ rÃ ng `--model` / `--config` / `--effort` Ä‘á»ƒ Claude sá»­ dá»¥ng `settings.json` máº·c Ä‘á»‹nh.

## `QMX setup` ghi nhá»¯ng gÃ¬

- `.QMX/setup-scope.json` (pháº¡m vi cÃ i Ä‘áº·t Ä‘Æ°á»£c lÆ°u trá»¯)
- CÃ i Ä‘áº·t phá»¥ thuá»™c pháº¡m vi:
  - `user`: `~/.codex/prompts/`, `~/.codex/skills/`, `~/.codex/config.toml`, `~/.QMX/agents/`, `~/.codex/AGENTS.md`
  - `project`: `./.codex/prompts/`, `./.codex/skills/`, `./.codex/config.toml`, `./.QMX/agents/`, `./AGENTS.md`
- HÃ nh vi khá»Ÿi cháº¡y: náº¿u pháº¡m vi Ä‘Æ°á»£c lÆ°u trá»¯ lÃ  `project`, khá»Ÿi cháº¡y `QMX` tá»± Ä‘á»™ng sá»­ dá»¥ng `CODEX_HOME=./.codex` (trá»« khi `CODEX_HOME` Ä‘Ã£ Ä‘Æ°á»£c Ä‘áº·t).
- HÆ°á»›ng dáº«n khá»Ÿi cháº¡y sáº½ káº¿t há»£p `~/.codex/AGENTS.md` (hoáº·c `CODEX_HOME/AGENTS.md` náº¿u Ä‘Ã£ ghi Ä‘Ã¨) vá»›i `./AGENTS.md` cá»§a dá»± Ã¡n, rá»“i thÃªm lá»›p phá»§ runtime.
- CÃ¡c tá»‡p `AGENTS.md` hiá»‡n cÃ³ sáº½ khÃ´ng bao giá» bá»‹ ghi Ä‘Ã¨ Ã¢m tháº§m: á»Ÿ TTY tÆ°Æ¡ng tÃ¡c, setup há»i trÆ°á»›c khi thay tháº¿; á»Ÿ cháº¿ Ä‘á»™ khÃ´ng tÆ°Æ¡ng tÃ¡c, viá»‡c thay tháº¿ sáº½ bá»‹ bá» qua trá»« khi dÃ¹ng `--force` (kiá»ƒm tra an toÃ n phiÃªn hoáº¡t Ä‘á»™ng váº«n Ã¡p dá»¥ng).
- Cáº­p nháº­t `config.toml` (cho cáº£ hai pháº¡m vi):
  - `notify = ["node", "..."]`
  - `model_reasoning_effort = "high"`
  - `developer_instructions = "..."`
  - `[features] multi_agent = true, child_agents_md = true`
  - Má»¥c mÃ¡y chá»§ MCP (`QMX_state`, `QMX_memory`, `QMX_code_intel`, `QMX_trace`)
  - `[tui] status_line`
- `AGENTS.md` theo pháº¡m vi
- ThÆ° má»¥c `.QMX/` runtime vÃ  cáº¥u hÃ¬nh HUD

## TÃ¡c nhÃ¢n vÃ  skill

- Prompt: `prompts/*.md` (cÃ i vÃ o `~/.codex/prompts/` cho `user`, `./.codex/prompts/` cho `project`)
- Skill: `skills/*/SKILL.md` (cÃ i vÃ o `~/.codex/skills/` cho `user`, `./.codex/skills/` cho `project`)

VÃ­ dá»¥:
- TÃ¡c nhÃ¢n: `architect`, `planner`, `executor`, `debugger`, `verifier`, `security-reviewer`
- Skill: `autopilot`, `plan`, `team`, `ralph`, `ultrawork`, `cancel`

## Cáº¥u trÃºc dá»± Ã¡n

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

## PhÃ¡t triá»ƒn

```bash
git clone https://github.com/Yeachan-Heo/oh-my-qwen.git
cd oh-my-qwen
npm install
npm run build
npm test
```

## TÃ i liá»‡u

- **[TÃ i liá»‡u Ä‘áº§y Ä‘á»§](https://yeachan-heo.github.io/oh-my-qwen-website/docs.html)** â€” HÆ°á»›ng dáº«n hoÃ n chá»‰nh
- **[Tham chiáº¿u CLI](https://yeachan-heo.github.io/oh-my-qwen-website/docs.html#cli-reference)** â€” Táº¥t cáº£ lá»‡nh `QMX`, cá» vÃ  cÃ´ng cá»¥
- **[HÆ°á»›ng dáº«n thÃ´ng bÃ¡o](https://yeachan-heo.github.io/oh-my-qwen-website/docs.html#notifications)** â€” CÃ i Ä‘áº·t Discord, Telegram, Slack vÃ  webhook
- **[Quy trÃ¬nh cÃ´ng viá»‡c khuyáº¿n nghá»‹](https://yeachan-heo.github.io/oh-my-qwen-website/docs.html#workflows)** â€” Chuá»—i skill Ä‘Ã£ thá»­ nghiá»‡m thá»±c chiáº¿n cho cÃ¡c tÃ¡c vá»¥ phá»• biáº¿n
- **[Ghi chÃº phÃ¡t hÃ nh](https://yeachan-heo.github.io/oh-my-qwen-website/docs.html#release-notes)** â€” TÃ­nh nÄƒng má»›i trong má»—i phiÃªn báº£n

## Ghi chÃº

- Nháº­t kÃ½ thay Ä‘á»•i Ä‘áº§y Ä‘á»§: `CHANGELOG.md`
- HÆ°á»›ng dáº«n di chuyá»ƒn (sau v0.4.4 mainline): `docs/migration-mainline-post-v0.4.4.md`
- Ghi chÃº vá» Ä‘á»™ bao phá»§ vÃ  tÆ°Æ¡ng Ä‘Æ°Æ¡ng: `COVERAGE.md`
- Quy trÃ¬nh má»Ÿ rá»™ng hook: `docs/hooks-extension.md`
- Chi tiáº¿t cÃ i Ä‘áº·t vÃ  Ä‘Ã³ng gÃ³p: `CONTRIBUTING.md`

## Lá»i cáº£m Æ¡n

Láº¥y cáº£m há»©ng tá»« [oh-my-claudecode](https://github.com/Yeachan-Heo/oh-my-claudecode), Ä‘Æ°á»£c Ä‘iá»u chá»‰nh cho Qwen Code CLI.

## Giáº¥y phÃ©p

MIT

