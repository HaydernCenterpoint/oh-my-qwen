# oh-my-qwen (QMX)

<p align="center">
  <img src="https://yeachan-heo.github.io/oh-my-qwen-website/QMX-character-nobg.png" alt="oh-my-qwen character" width="280">
  <br>
  <em>Il tuo codex non Ã¨ solo.</em>
</p>

[![npm version](https://img.shields.io/npm/v/oh-my-qwen)](https://www.npmjs.com/package/oh-my-qwen)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Node.js](https://img.shields.io/badge/node-%3E%3D20-brightgreen)](https://nodejs.org)

> **[Website](https://yeachan-heo.github.io/oh-my-qwen-website/)** | **[Documentation](https://yeachan-heo.github.io/oh-my-qwen-website/docs.html)** | **[CLI Reference](https://yeachan-heo.github.io/oh-my-qwen-website/docs.html#cli-reference)** | **[Workflows](https://yeachan-heo.github.io/oh-my-qwen-website/docs.html#workflows)** | **[Guida allâ€™integrazione OpenClaw](./docs/openclaw-integration.it.md)** | **[GitHub](https://github.com/Yeachan-Heo/oh-my-qwen)** | **[npm](https://www.npmjs.com/package/oh-my-qwen)**

Livello di orchestrazione multi-agente per [OpenAI Qwen Code CLI](https://github.com/openai/codex).

## NovitÃ  nella v0.9.0 â€” Spark Initiative

Spark Initiative Ã¨ la release che rafforza il percorso nativo di esplorazione e ispezione in QMX.

- **Harness nativo per `QMX explore`** â€” esegue lâ€™esplorazione del repository in sola lettura tramite un percorso Rust piÃ¹ rapido e piÃ¹ rigoroso.
- **`QMX sparkshell`** â€” superficie nativa per operatori con riepiloghi dellâ€™output lungo e cattura esplicita dei pannelli tmux.
- **Asset nativi multipiattaforma** â€” il percorso di hydration per `QMX-explore-harness`, `QMX-sparkshell` e `native-release-manifest.json` ora fa parte della pipeline di release.
- **CI/CD rafforzato** â€” aggiunge la configurazione esplicita della toolchain Rust nel job `build`, oltre a `cargo fmt --check` e `cargo clippy -- -D warnings`.

Vedi anche le [note di rilascio v0.9.0](./docs/release-notes-0.9.0.md) e il [testo della release](./docs/release-body-0.9.0.md).

## Prima sessione

All'interno di Codex:

```text
/prompts:architect "analyze current auth boundaries"
/prompts:executor "implement input validation in login"
$plan "ship OAuth callback safely"
$team 3:executor "fix all TypeScript errors"
```

Dal terminale:

```bash
QMX team 4:executor "parallelize a multi-module refactor"
QMX team status <team-name>
QMX team shutdown <team-name>
```

## Modello di base

QMX installa e collega questi livelli:

```text
User
  -> Qwen Code CLI
    -> AGENTS.md (cervello dell'orchestrazione)
    -> ~/.codex/prompts/*.md (catalogo prompt degli agenti)
    -> ~/.codex/skills/*/SKILL.md (catalogo skill)
    -> ~/.codex/config.toml (funzionalitÃ , notifiche, MCP)
    -> .QMX/ (stato di esecuzione, memoria, piani, log)
```

## Comandi principali

```bash
QMX                # Avvia Codex (+ HUD in tmux se disponibile)
QMX setup          # Installa prompt/skill/config per scope + .QMX del progetto + AGENTS.md specifico dello scope
QMX doctor         # Diagnostica installazione/esecuzione
QMX doctor --team  # Diagnostica Team/Swarm
QMX team ...       # Avvia/stato/riprendi/arresta i worker del team tmux
QMX status         # Mostra le modalitÃ  attive
QMX cancel         # Annulla le modalitÃ  di esecuzione attive
QMX reasoning <mode> # low|medium|high|xhigh
QMX tmux-hook ...  # init|status|validate|test
QMX hooks ...      # init|status|validate|test (workflow estensione plugin)
QMX hud ...        # --watch|--json|--preset
QMX help
```

## Estensione Hooks (Superficie additiva)

QMX ora include `QMX hooks` per lo scaffolding e la validazione dei plugin.

- `QMX tmux-hook` resta supportato e invariato.
- `QMX hooks` Ã¨ additivo e non sostituisce i workflow tmux-hook.
- I file dei plugin si trovano in `.QMX/hooks/*.mjs`.
- I plugin sono disattivati per impostazione predefinita; abilitali con `QMX_HOOK_PLUGINS=1`.

Consulta `docs/hooks-extension.md` per il workflow completo di estensione e il modello degli eventi.

## Flag di avvio

```bash
--yolo
--high
--xhigh
--madmax
--force
--dry-run
--verbose
--scope <user|project>  # solo per setup
```

`--madmax` corrisponde a Codex `--dangerously-bypass-approvals-and-sandbox`.
Utilizzare solo in ambienti sandbox fidati/esterni.

### Policy MCP workingDirectory (hardening opzionale)

Per impostazione predefinita, gli strumenti MCP stato/memoria/trace accettano il `workingDirectory` fornito dal chiamante.
Per limitare questo, imposta una lista di directory root consentite:

```bash
export QMX_MCP_WORKDIR_ROOTS="/path/to/project:/path/to/another-root"
```

Quando impostato, i valori `workingDirectory` al di fuori di queste root vengono rifiutati.

## Controllo Codex-First dei prompt

Per impostazione predefinita, QMX inietta:

```text
-c model_instructions_file="<cwd>/AGENTS.md"
```

Questo unisce l'`AGENTS.md` di `CODEX_HOME` con l'`AGENTS.md` del progetto (se presente) e poi aggiunge l'overlay di runtime.
Estende il comportamento di Codex, ma non sostituisce/aggira le policy di sistema core di Codex.

Controlli:

```bash
QMX_BYPASS_DEFAULT_SYSTEM_PROMPT=0 QMX     # disabilita l'iniezione AGENTS.md
QMX_MODEL_INSTRUCTIONS_FILE=/path/to/instructions.md QMX
```

## ModalitÃ  team

Usa la modalitÃ  team per lavori ampi che beneficiano di worker paralleli.

Ciclo di vita:

```text
start -> assign scoped lanes -> monitor -> verify terminal tasks -> shutdown
```

Comandi operativi:

```bash
QMX team <args>
QMX team status <team-name>
QMX team resume <team-name>
QMX team shutdown <team-name>
```

Regola importante: non arrestare mentre i task sono ancora `in_progress`, a meno che non si stia abortendo.

### Team shutdown policy

Use `QMX team shutdown <team-name>` after the team reaches a terminal state.
Team cleanup now follows one standalone path; there is no separate `QMX team ralph ...` shutdown policy anymore.

Selezione CLI worker per i worker del team:

```bash
QMX_TEAM_WORKER_CLI=auto    # predefinito; usa claude quando worker --model contiene "claude"
QMX_TEAM_WORKER_CLI=codex   # forza i worker Qwen Code CLI
QMX_TEAM_WORKER_CLI=claude  # forza i worker Claude CLI
QMX_TEAM_WORKER_CLI_MAP=codex,codex,claude,claude  # mix CLI per worker (lunghezza=1 o numero di worker)
QMX_TEAM_AUTO_INTERRUPT_RETRY=0  # opzionale: disabilita il fallback adattivo queue->resend
```

Note:
- Gli argomenti di avvio dei worker sono ancora condivisi tramite `QMX_TEAM_WORKER_LAUNCH_ARGS`.
- `QMX_TEAM_WORKER_CLI_MAP` sovrascrive `QMX_TEAM_WORKER_CLI` per la selezione per singolo worker.
- L'invio dei trigger usa per impostazione predefinita tentativi adattivi (queue/submit, poi fallback sicuro clear-line+resend quando necessario).
- In modalitÃ  worker Claude, QMX avvia i worker come semplice `claude` (nessun argomento di avvio aggiuntivo) e ignora le sovrascritture esplicite `--model` / `--config` / `--effort` in modo che Claude usi il `settings.json` predefinito.

## Cosa scrive `QMX setup`

- `.QMX/setup-scope.json` (scope di setup persistito)
- Installazioni dipendenti dallo scope:
  - `user`: `~/.codex/prompts/`, `~/.codex/skills/`, `~/.codex/config.toml`, `~/.QMX/agents/`, `~/.codex/AGENTS.md`
  - `project`: `./.codex/prompts/`, `./.codex/skills/`, `./.codex/config.toml`, `./.QMX/agents/`, `./AGENTS.md`
- Comportamento all'avvio: se lo scope persistito Ã¨ `project`, l'avvio `QMX` usa automaticamente `CODEX_HOME=./.codex` (a meno che `CODEX_HOME` non sia giÃ  impostato).
- Le istruzioni di avvio uniscono `~/.codex/AGENTS.md` (o `CODEX_HOME/AGENTS.md` se ridefinito) con `./AGENTS.md` del progetto, quindi aggiungono l'overlay di runtime.
- I file `AGENTS.md` esistenti non vengono mai sovrascritti in silenzio: in TTY interattivo il setup chiede prima di sostituire; in modalitÃ  non interattiva la sostituzione viene saltata salvo `--force` (i controlli di sicurezza della sessione attiva restano validi).
- Aggiornamenti `config.toml` (per entrambi gli scope):
  - `notify = ["node", "..."]`
  - `model_reasoning_effort = "high"`
  - `developer_instructions = "..."`
  - `[features] multi_agent = true, child_agents_md = true`
  - Voci server MCP (`QMX_state`, `QMX_memory`, `QMX_code_intel`, `QMX_trace`)
  - `[tui] status_line`
- `AGENTS.md` specifico dello scope
- Directory di esecuzione `.QMX/` e configurazione HUD

## Agenti e Skill

- Prompt: `prompts/*.md` (installati in `~/.codex/prompts/` per `user`, `./.codex/prompts/` per `project`)
- Skill: `skills/*/SKILL.md` (installati in `~/.codex/skills/` per `user`, `./.codex/skills/` per `project`)

Esempi:
- Agenti: `architect`, `planner`, `executor`, `debugger`, `verifier`, `security-reviewer`
- Skill: `autopilot`, `plan`, `team`, `ralph`, `ultrawork`, `cancel`

## Struttura del progetto

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

## Sviluppo

```bash
git clone https://github.com/Yeachan-Heo/oh-my-qwen.git
cd oh-my-qwen
npm install
npm run build
npm test
```

## Documentazione

- **[Documentazione completa](https://yeachan-heo.github.io/oh-my-qwen-website/docs.html)** â€” Guida completa
- **[Riferimento CLI](https://yeachan-heo.github.io/oh-my-qwen-website/docs.html#cli-reference)** â€” Tutti i comandi `QMX`, flag e strumenti
- **[Guida alle notifiche](https://yeachan-heo.github.io/oh-my-qwen-website/docs.html#notifications)** â€” Configurazione Discord, Telegram, Slack e webhook
- **[Workflow consigliati](https://yeachan-heo.github.io/oh-my-qwen-website/docs.html#workflows)** â€” Catene di skill collaudate per i compiti comuni
- **[Note di rilascio](https://yeachan-heo.github.io/oh-my-qwen-website/docs.html#release-notes)** â€” NovitÃ  di ogni versione

## Note

- Changelog completo: `CHANGELOG.md`
- Guida alla migrazione (post-v0.4.4 mainline): `docs/migration-mainline-post-v0.4.4.md`
- Note di copertura e paritÃ : `COVERAGE.md`
- Workflow estensione hook: `docs/hooks-extension.md`
- Dettagli setup e contribuzione: `CONTRIBUTING.md`

## Ringraziamenti

Ispirato da [oh-my-claudecode](https://github.com/Yeachan-Heo/oh-my-claudecode), adattato per Qwen Code CLI.

## Licenza

MIT

