# oh-my-qwen (QMX)

<p align="center">
  <img src="https://yeachan-heo.github.io/oh-my-qwen-website/QMX-character-nobg.png" alt="oh-my-qwen character" width="280">
  <br>
  <em>Codex'iniz yalnÄ±z deÄŸil.</em>
</p>

[![npm version](https://img.shields.io/npm/v/oh-my-qwen)](https://www.npmjs.com/package/oh-my-qwen)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Node.js](https://img.shields.io/badge/node-%3E%3D20-brightgreen)](https://nodejs.org)

> **[Website](https://yeachan-heo.github.io/oh-my-qwen-website/)** | **[Documentation](https://yeachan-heo.github.io/oh-my-qwen-website/docs.html)** | **[CLI Reference](https://yeachan-heo.github.io/oh-my-qwen-website/docs.html#cli-reference)** | **[Workflows](https://yeachan-heo.github.io/oh-my-qwen-website/docs.html#workflows)** | **[OpenClaw Entegrasyon KÄ±lavuzu](./docs/openclaw-integration.tr.md)** | **[GitHub](https://github.com/Yeachan-Heo/oh-my-qwen)** | **[npm](https://www.npmjs.com/package/oh-my-qwen)**

[OpenAI Qwen Code CLI](https://github.com/openai/codex) iÃ§in Ã§ok ajanlÄ± orkestrasyon katmanÄ±.

## v0.9.0'daki Yenilikler â€” Spark Initiative

Spark Initiative, QMX iÃ§indeki native keÅŸif ve inceleme yolunu gÃ¼Ã§lendiren sÃ¼rÃ¼mdÃ¼r.

- **`QMX explore` iÃ§in native harness** â€” salt okunur depo keÅŸfini Rust tabanlÄ± daha hÄ±zlÄ± ve daha sÄ±kÄ± bir yol Ã¼zerinden Ã§alÄ±ÅŸtÄ±rÄ±r.
- **`QMX sparkshell`** â€” uzun Ã§Ä±ktÄ±larÄ± Ã¶zetleyen ve aÃ§Ä±k tmux pane yakalama desteÄŸi veren operatÃ¶r odaklÄ± native inceleme yÃ¼zeyidir.
- **Ã‡apraz platform native release varlÄ±klarÄ±** â€” `QMX-explore-harness`, `QMX-sparkshell` ve `native-release-manifest.json` iÃ§in hydration yolu artÄ±k release pipeline'Ä±n parÃ§asÄ±dÄ±r.
- **GÃ¼Ã§lendirilmiÅŸ CI/CD** â€” `build` job'Ä±na aÃ§Ä±k Rust toolchain kurulumu ile birlikte `cargo fmt --check` ve `cargo clippy -- -D warnings` eklendi.

AyrÄ±ntÄ±lar iÃ§in [v0.9.0 release notlarÄ±](./docs/release-notes-0.9.0.md) ve [release body](./docs/release-body-0.9.0.md) dosyalarÄ±na bakÄ±n.

## Ä°lk Oturum

Codex iÃ§inde:

```text
/prompts:architect "analyze current auth boundaries"
/prompts:executor "implement input validation in login"
$plan "ship OAuth callback safely"
$team 3:executor "fix all TypeScript errors"
```

Terminalden:

```bash
QMX team 4:executor "parallelize a multi-module refactor"
QMX team status <team-name>
QMX team shutdown <team-name>
```

## Temel Model

QMX ÅŸu katmanlarÄ± kurar ve baÄŸlar:

```text
User
  -> Qwen Code CLI
    -> AGENTS.md (orkestrasyon beyni)
    -> ~/.codex/prompts/*.md (ajan prompt kataloÄŸu)
    -> ~/.codex/skills/*/SKILL.md (skill kataloÄŸu)
    -> ~/.codex/config.toml (Ã¶zellikler, bildirimler, MCP)
    -> .QMX/ (Ã§alÄ±ÅŸma zamanÄ± durumu, bellek, planlar, gÃ¼nlÃ¼kler)
```

## Ana Komutlar

```bash
QMX                # Codex'i baÅŸlat (tmux'ta HUD ile birlikte)
QMX setup          # Prompt/skill/config'i kapsama gÃ¶re kur + proje .QMX + kapsama Ã¶zel AGENTS.md
QMX doctor         # Kurulum/Ã§alÄ±ÅŸma zamanÄ± tanÄ±lamalarÄ±
QMX doctor --team  # Team/swarm tanÄ±lamalarÄ±
QMX team ...       # tmux takÄ±m Ã§alÄ±ÅŸanlarÄ±nÄ± baÅŸlat/durum/devam et/kapat
QMX status         # Aktif modlarÄ± gÃ¶ster
QMX cancel         # Aktif Ã§alÄ±ÅŸma modlarÄ±nÄ± iptal et
QMX reasoning <mode> # low|medium|high|xhigh
QMX tmux-hook ...  # init|status|validate|test
QMX hooks ...      # init|status|validate|test (eklenti uzantÄ± iÅŸ akÄ±ÅŸÄ±)
QMX hud ...        # --watch|--json|--preset
QMX help
```

## Hooks UzantÄ±sÄ± (Ek YÃ¼zey)

QMX artÄ±k eklenti iskelesi ve doÄŸrulamasÄ± iÃ§in `QMX hooks` iÃ§erir.

- `QMX tmux-hook` desteklenmeye devam eder ve deÄŸiÅŸmemiÅŸtir.
- `QMX hooks` ek niteliktedir ve tmux-hook iÅŸ akÄ±ÅŸlarÄ±nÄ± deÄŸiÅŸtirmez.
- Eklenti dosyalarÄ± `.QMX/hooks/*.mjs` konumunda bulunur.
- Eklentiler varsayÄ±lan olarak kapalÄ±dÄ±r; `QMX_HOOK_PLUGINS=1` ile etkinleÅŸtirin.

Tam uzantÄ± iÅŸ akÄ±ÅŸÄ± ve olay modeli iÃ§in `docs/hooks-extension.md` dosyasÄ±na bakÄ±n.

## BaÅŸlatma BayraklarÄ±

```bash
--yolo
--high
--xhigh
--madmax
--force
--dry-run
--verbose
--scope <user|project>  # yalnÄ±zca setup
```

`--madmax`, Codex `--dangerously-bypass-approvals-and-sandbox` ile eÅŸlenir.
YalnÄ±zca gÃ¼venilir/harici sandbox ortamlarÄ±nda kullanÄ±n.

### MCP workingDirectory politikasÄ± (isteÄŸe baÄŸlÄ± sertleÅŸtirme)

VarsayÄ±lan olarak, MCP durum/bellek/trace araÃ§larÄ± Ã§aÄŸÄ±ranÄ±n saÄŸladÄ±ÄŸÄ± `workingDirectory` deÄŸerini kabul eder.
Bunu kÄ±sÄ±tlamak iÃ§in bir izin listesi belirleyin:

```bash
export QMX_MCP_WORKDIR_ROOTS="/path/to/project:/path/to/another-root"
```

AyarlandÄ±ÄŸÄ±nda, bu kÃ¶kler dÄ±ÅŸÄ±ndaki `workingDirectory` deÄŸerleri reddedilir.

## Codex-First Prompt KontrolÃ¼

VarsayÄ±lan olarak, QMX ÅŸunu enjekte eder:

```text
-c model_instructions_file="<cwd>/AGENTS.md"
```

Bu, `CODEX_HOME` iÃ§indeki `AGENTS.md` ile proje `AGENTS.md` dosyasÄ±nÄ± (varsa) birleÅŸtirir ve ardÄ±ndan Ã§alÄ±ÅŸma zamanÄ± kaplamasÄ±nÄ± ekler.
Codex davranÄ±ÅŸÄ±nÄ± geniÅŸletir, ancak Codex Ã§ekirdek sistem politikalarÄ±nÄ± deÄŸiÅŸtirmez/atlamaz.

Kontroller:

```bash
QMX_BYPASS_DEFAULT_SYSTEM_PROMPT=0 QMX     # AGENTS.md enjeksiyonunu devre dÄ±ÅŸÄ± bÄ±rak
QMX_MODEL_INSTRUCTIONS_FILE=/path/to/instructions.md QMX
```

## TakÄ±m Modu

Paralel Ã§alÄ±ÅŸanlardan fayda saÄŸlayan geniÅŸ kapsamlÄ± iÅŸler iÃ§in takÄ±m modunu kullanÄ±n.

YaÅŸam dÃ¶ngÃ¼sÃ¼:

```text
start -> assign scoped lanes -> monitor -> verify terminal tasks -> shutdown
```

Operasyonel komutlar:

```bash
QMX team <args>
QMX team status <team-name>
QMX team resume <team-name>
QMX team shutdown <team-name>
```

Ã–nemli kural: Ä°ptal etmiyorsanÄ±z, gÃ¶revler hÃ¢lÃ¢ `in_progress` durumundayken kapatmayÄ±n.

### Team shutdown policy

Use `QMX team shutdown <team-name>` after the team reaches a terminal state.
Team cleanup now follows one standalone path; there is no separate `QMX team ralph ...` shutdown policy anymore.

TakÄ±m Ã§alÄ±ÅŸanlarÄ± iÃ§in Worker CLI seÃ§imi:

```bash
QMX_TEAM_WORKER_CLI=auto    # varsayÄ±lan; worker --model "claude" iÃ§eriyorsa claude kullanÄ±r
QMX_TEAM_WORKER_CLI=codex   # Qwen Code CLI Ã§alÄ±ÅŸanlarÄ±nÄ± zorla
QMX_TEAM_WORKER_CLI=claude  # Claude CLI Ã§alÄ±ÅŸanlarÄ±nÄ± zorla
QMX_TEAM_WORKER_CLI_MAP=codex,codex,claude,claude  # Ã§alÄ±ÅŸan baÅŸÄ±na CLI karÄ±ÅŸÄ±mÄ± (uzunluk=1 veya Ã§alÄ±ÅŸan sayÄ±sÄ±)
QMX_TEAM_AUTO_INTERRUPT_RETRY=0  # isteÄŸe baÄŸlÄ±: adaptif queue->resend geri dÃ¶nÃ¼ÅŸÃ¼nÃ¼ devre dÄ±ÅŸÄ± bÄ±rak
```

Notlar:
- Worker baÅŸlatma argÃ¼manlarÄ± hÃ¢lÃ¢ `QMX_TEAM_WORKER_LAUNCH_ARGS` aracÄ±lÄ±ÄŸÄ±yla paylaÅŸÄ±lÄ±r.
- `QMX_TEAM_WORKER_CLI_MAP`, Ã§alÄ±ÅŸan baÅŸÄ±na seÃ§im iÃ§in `QMX_TEAM_WORKER_CLI`'yi geÃ§ersiz kÄ±lar.
- Tetikleyici gÃ¶nderimi varsayÄ±lan olarak adaptif yeniden denemeler kullanÄ±r (queue/submit, ardÄ±ndan gerektiÄŸinde gÃ¼venli clear-line+resend geri dÃ¶nÃ¼ÅŸÃ¼).
- Claude worker modunda, QMX Ã§alÄ±ÅŸanlarÄ± dÃ¼z `claude` olarak baÅŸlatÄ±r (ekstra baÅŸlatma argÃ¼manÄ± yok) ve aÃ§Ä±k `--model` / `--config` / `--effort` geÃ§ersiz kÄ±lmalarÄ±nÄ± yok sayar, bÃ¶ylece Claude varsayÄ±lan `settings.json` kullanÄ±r.

## `QMX setup` Ne Yazar

- `.QMX/setup-scope.json` (kalÄ±cÄ± kurulum kapsamÄ±)
- Kapsama baÄŸlÄ± kurulumlar:
  - `user`: `~/.codex/prompts/`, `~/.codex/skills/`, `~/.codex/config.toml`, `~/.QMX/agents/`, `~/.codex/AGENTS.md`
  - `project`: `./.codex/prompts/`, `./.codex/skills/`, `./.codex/config.toml`, `./.QMX/agents/`, `./AGENTS.md`
- BaÅŸlatma davranÄ±ÅŸÄ±: kalÄ±cÄ± kapsam `project` ise, `QMX` baÅŸlatma otomatik olarak `CODEX_HOME=./.codex` kullanÄ±r (`CODEX_HOME` zaten ayarlanmadÄ±ysa).
- BaÅŸlatma talimatlarÄ± `~/.codex/AGENTS.md` (veya geÃ§ersiz kÄ±lÄ±ndÄ±ysa `CODEX_HOME/AGENTS.md`) ile proje `./AGENTS.md` dosyasÄ±nÄ± birleÅŸtirir ve ardÄ±ndan Ã§alÄ±ÅŸma zamanÄ± kaplamasÄ±nÄ± ekler.
- Mevcut `AGENTS.md` dosyalarÄ± sessizce Ã¼zerine yazÄ±lmaz: etkileÅŸimli TTY'de setup deÄŸiÅŸtirmeden Ã¶nce sorar; etkileÅŸimsiz Ã§alÄ±ÅŸtÄ±rmada ise `--force` yoksa deÄŸiÅŸtirme atlanÄ±r (aktif oturum gÃ¼venlik kontrolleri hÃ¢lÃ¢ geÃ§erlidir).
- `config.toml` gÃ¼ncellemeleri (her iki kapsam iÃ§in):
  - `notify = ["node", "..."]`
  - `model_reasoning_effort = "high"`
  - `developer_instructions = "..."`
  - `[features] multi_agent = true, child_agents_md = true`
  - MCP sunucu giriÅŸleri (`QMX_state`, `QMX_memory`, `QMX_code_intel`, `QMX_trace`)
  - `[tui] status_line`
- Kapsama Ã¶zel `AGENTS.md`
- `.QMX/` Ã§alÄ±ÅŸma zamanÄ± dizinleri ve HUD yapÄ±landÄ±rmasÄ±

## Ajanlar ve Skill'ler

- Prompt'lar: `prompts/*.md` (`user` iÃ§in `~/.codex/prompts/`'a, `project` iÃ§in `./.codex/prompts/`'a kurulur)
- Skill'ler: `skills/*/SKILL.md` (`user` iÃ§in `~/.codex/skills/`'a, `project` iÃ§in `./.codex/skills/`'a kurulur)

Ã–rnekler:
- Ajanlar: `architect`, `planner`, `executor`, `debugger`, `verifier`, `security-reviewer`
- Skill'ler: `autopilot`, `plan`, `team`, `ralph`, `ultrawork`, `cancel`

## Proje YapÄ±sÄ±

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

## GeliÅŸtirme

```bash
git clone https://github.com/Yeachan-Heo/oh-my-qwen.git
cd oh-my-qwen
npm install
npm run build
npm test
```

## DokÃ¼mantasyon

- **[Tam DokÃ¼mantasyon](https://yeachan-heo.github.io/oh-my-qwen-website/docs.html)** â€” Eksiksiz kÄ±lavuz
- **[CLI ReferansÄ±](https://yeachan-heo.github.io/oh-my-qwen-website/docs.html#cli-reference)** â€” TÃ¼m `QMX` komutlarÄ±, bayraklar ve araÃ§lar
- **[Bildirim KÄ±lavuzu](https://yeachan-heo.github.io/oh-my-qwen-website/docs.html#notifications)** â€” Discord, Telegram, Slack ve webhook kurulumu
- **[Ã–nerilen Ä°ÅŸ AkÄ±ÅŸlarÄ±](https://yeachan-heo.github.io/oh-my-qwen-website/docs.html#workflows)** â€” YaygÄ±n gÃ¶revler iÃ§in savaÅŸta test edilmiÅŸ skill zincirleri
- **[SÃ¼rÃ¼m NotlarÄ±](https://yeachan-heo.github.io/oh-my-qwen-website/docs.html#release-notes)** â€” Her sÃ¼rÃ¼mdeki yenilikler

## Notlar

- Tam deÄŸiÅŸiklik gÃ¼nlÃ¼ÄŸÃ¼: `CHANGELOG.md`
- GeÃ§iÅŸ rehberi (v0.4.4 sonrasÄ± mainline): `docs/migration-mainline-post-v0.4.4.md`
- Kapsam ve eÅŸitlik notlarÄ±: `COVERAGE.md`
- Hook uzantÄ± iÅŸ akÄ±ÅŸÄ±: `docs/hooks-extension.md`
- Kurulum ve katkÄ± detaylarÄ±: `CONTRIBUTING.md`

## TeÅŸekkÃ¼rler

[oh-my-claudecode](https://github.com/Yeachan-Heo/oh-my-claudecode)'dan ilham alÄ±nmÄ±ÅŸtÄ±r, Qwen Code CLI iÃ§in uyarlanmÄ±ÅŸtÄ±r.

## Lisans

MIT

