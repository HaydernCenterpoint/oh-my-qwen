# oh-my-qwen (QMX)

<p align="center">
  <img src="https://yeachan-heo.github.io/oh-my-qwen-website/QMX-character-nobg.png" alt="oh-my-qwen character" width="280">
  <br>
  <em>Dein Codex ist nicht allein.</em>
</p>

[![npm version](https://img.shields.io/npm/v/oh-my-qwen)](https://www.npmjs.com/package/oh-my-qwen)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Node.js](https://img.shields.io/badge/node-%3E%3D20-brightgreen)](https://nodejs.org)

> **[Website](https://yeachan-heo.github.io/oh-my-qwen-website/)** | **[Documentation](https://yeachan-heo.github.io/oh-my-qwen-website/docs.html)** | **[CLI Reference](https://yeachan-heo.github.io/oh-my-qwen-website/docs.html#cli-reference)** | **[Workflows](https://yeachan-heo.github.io/oh-my-qwen-website/docs.html#workflows)** | **[OpenClaw-Integrationsleitfaden](./docs/openclaw-integration.de.md)** | **[GitHub](https://github.com/Yeachan-Heo/oh-my-qwen)** | **[npm](https://www.npmjs.com/package/oh-my-qwen)**

Multi-Agenten-Orchestrierungsschicht fÃ¼r [OpenAI Qwen Code CLI](https://github.com/openai/codex).

## Neu in v0.9.0 â€” Spark Initiative

Spark Initiative ist das Release, das den nativen Pfad fÃ¼r Exploration und Inspektion in QMX stÃ¤rkt.

- **Nativer Harness fÃ¼r `QMX explore`** â€” fÃ¼hrt Read-only-Repository-Exploration Ã¼ber einen schnelleren und strengeren Rust-Pfad aus.
- **`QMX sparkshell`** â€” native Operator-OberflÃ¤che fÃ¼r Inspektion mit Zusammenfassungen langer Ausgaben und expliziter tmux-Pane-Erfassung.
- **PlattformÃ¼bergreifende native Release-Artefakte** â€” der Hydration-Pfad fÃ¼r `QMX-explore-harness`, `QMX-sparkshell` und `native-release-manifest.json` ist jetzt Teil der Release-Pipeline.
- **GehÃ¤rtetes CI/CD** â€” ergÃ¤nzt ein explizites Rust-Toolchain-Setup im `build`-Job sowie `cargo fmt --check` und `cargo clippy -- -D warnings`.

Siehe auch die [Release Notes zu v0.9.0](./docs/release-notes-0.9.0.md) und den [Release-Text](./docs/release-body-0.9.0.md).

## Erste Sitzung

Innerhalb von Codex:

```text
$architect "analyze current auth boundaries"
$executor "implement input validation in login"
$plan "ship OAuth callback safely"
$team 3:executor "fix all TypeScript errors"
```

Vom Terminal:

```bash
QMX team 4:executor "parallelize a multi-module refactor"
QMX team status <team-name>
QMX team shutdown <team-name>
```

## Kernmodell

QMX installiert und verbindet diese Schichten:

```text
User
  -> Qwen Code CLI
    -> AGENTS.md (Orchestrierungs-Gehirn)
    -> ~/.codex/prompts/*.md (Agenten-Prompt-Katalog)
    -> ~/.codex/skills/*/SKILL.md (Skill-Katalog)
    -> ~/.codex/config.toml (Features, Benachrichtigungen, MCP)
    -> .QMX/ (Laufzeitzustand, Speicher, PlÃ¤ne, Protokolle)
```

## Hauptbefehle

```bash
QMX                # Codex starten (+ HUD in tmux wenn verfÃ¼gbar)
QMX setup          # Prompts/Skills/Config nach Bereich installieren + Projekt-.QMX + bereichsspezifische AGENTS.md
QMX doctor         # Installations-/Laufzeitdiagnose
QMX doctor --team  # Team/Swarm-Diagnose
QMX team ...       # tmux-Team-Worker starten/Status/fortsetzen/herunterfahren
QMX status         # Aktive Modi anzeigen
QMX cancel         # Aktive AusfÃ¼hrungsmodi abbrechen
QMX reasoning <mode> # low|medium|high|xhigh
QMX tmux-hook ...  # init|status|validate|test
QMX hooks ...      # init|status|validate|test (Plugin-Erweiterungs-Workflow)
QMX hud ...        # --watch|--json|--preset
QMX help
```

## Hooks-Erweiterung (Additive OberflÃ¤che)

QMX enthÃ¤lt jetzt `QMX hooks` fÃ¼r Plugin-GerÃ¼stbau und -Validierung.

- `QMX tmux-hook` wird weiterhin unterstÃ¼tzt und ist unverÃ¤ndert.
- `QMX hooks` ist additiv und ersetzt keine tmux-hook-Workflows.
- Plugin-Dateien befinden sich unter `.QMX/hooks/*.mjs`.
- Plugins sind standardmÃ¤ÃŸig deaktiviert; aktivieren mit `QMX_HOOK_PLUGINS=1`.

Siehe `docs/hooks-extension.md` fÃ¼r den vollstÃ¤ndigen Erweiterungs-Workflow und das Ereignismodell.

## Start-Flags

```bash
--yolo
--high
--xhigh
--madmax
--force
--dry-run
--verbose
--scope <user|project>  # nur bei setup
```

`--madmax` entspricht Codex `--dangerously-bypass-approvals-and-sandbox`.
Nur in vertrauenswÃ¼rdigen/externen Sandbox-Umgebungen verwenden.

### MCP workingDirectory-Richtlinie (optionale HÃ¤rtung)

StandardmÃ¤ÃŸig akzeptieren MCP-Zustand/Speicher/Trace-Tools das vom Aufrufer bereitgestellte `workingDirectory`.
Um dies einzuschrÃ¤nken, setzen Sie eine Erlaubnisliste von Wurzelverzeichnissen:

```bash
export QMX_MCP_WORKDIR_ROOTS="/path/to/project:/path/to/another-root"
```

Wenn gesetzt, werden `workingDirectory`-Werte auÃŸerhalb dieser Wurzeln abgelehnt.

## Codex-First Prompt-Steuerung

StandardmÃ¤ÃŸig injiziert QMX:

```text
-c model_instructions_file="<cwd>/AGENTS.md"
```

Dies kombiniert `AGENTS.md` aus `CODEX_HOME` mit dem Projekt-`AGENTS.md` (falls vorhanden) und legt dann die Laufzeit-Ãœberlagerung darÃ¼ber.
Es erweitert das Codex-Verhalten, ersetzt/umgeht aber nicht die Codex-Kernsystemrichtlinien.

Steuerung:

```bash
QMX_BYPASS_DEFAULT_SYSTEM_PROMPT=0 QMX     # AGENTS.md-Injektion deaktivieren
QMX_MODEL_INSTRUCTIONS_FILE=/path/to/instructions.md QMX
```

## Team-Modus

Verwenden Sie den Team-Modus fÃ¼r umfangreiche Arbeiten, die von parallelen Workern profitieren.

Lebenszyklus:

```text
start -> assign scoped lanes -> monitor -> verify terminal tasks -> shutdown
```

Operationelle Befehle:

```bash
QMX team <args>
QMX team status <team-name>
QMX team resume <team-name>
QMX team shutdown <team-name>
```

Wichtige Regel: Fahren Sie nicht herunter, wÃ¤hrend Aufgaben noch `in_progress` sind, es sei denn, Sie brechen ab.

### Team shutdown policy

Use `QMX team shutdown <team-name>` after the team reaches a terminal state.
Team cleanup now follows one standalone path; there is no separate `QMX team ralph ...` shutdown policy anymore.

Worker-CLI-Auswahl fÃ¼r Team-Worker:

```bash
QMX_TEAM_WORKER_CLI=auto    # Standard; verwendet claude wenn Worker --model "claude" enthÃ¤lt
QMX_TEAM_WORKER_CLI=codex   # Codex-CLI-Worker erzwingen
QMX_TEAM_WORKER_CLI=claude  # Claude-CLI-Worker erzwingen
QMX_TEAM_WORKER_CLI_MAP=codex,codex,claude,claude  # CLI-Mix pro Worker (LÃ¤nge=1 oder Worker-Anzahl)
QMX_TEAM_AUTO_INTERRUPT_RETRY=0  # optional: adaptiven Queue->Resend-Fallback deaktivieren
```

Hinweise:
- Worker-Startargumente werden weiterhin Ã¼ber `QMX_TEAM_WORKER_LAUNCH_ARGS` geteilt.
- `QMX_TEAM_WORKER_CLI_MAP` Ã¼berschreibt `QMX_TEAM_WORKER_CLI` fÃ¼r Worker-spezifische Auswahl.
- Trigger-Ãœbermittlung verwendet standardmÃ¤ÃŸig adaptive Wiederholungsversuche (Queue/Submit, dann sicherer Clear-Line+Resend-Fallback bei Bedarf).
- Im Claude-Worker-Modus startet QMX Worker als einfaches `claude` (keine zusÃ¤tzlichen Startargumente) und ignoriert explizite `--model` / `--config` / `--effort`-Ãœberschreibungen, sodass Claude die Standard-`settings.json` verwendet.

## Was `QMX setup` schreibt

- `.QMX/setup-scope.json` (persistierter Setup-Bereich)
- BereichsabhÃ¤ngige Installationen:
  - `user`: `~/.codex/prompts/`, `~/.codex/skills/`, `~/.codex/config.toml`, `~/.QMX/agents/`, `~/.codex/AGENTS.md`
  - `project`: `./.codex/prompts/`, `./.codex/skills/`, `./.codex/config.toml`, `./.QMX/agents/`, `./AGENTS.md`
- Startverhalten: Wenn der persistierte Bereich `project` ist, verwendet `QMX` automatisch `CODEX_HOME=./.codex` (sofern `CODEX_HOME` nicht bereits gesetzt ist).
- Startanweisungen kombinieren `~/.codex/AGENTS.md` (bzw. `CODEX_HOME/AGENTS.md`, wenn Ã¼berschrieben) mit dem Projekt-`./AGENTS.md` und hÃ¤ngen anschlieÃŸend die Runtime-Ãœberlagerung an.
- Vorhandene `AGENTS.md`-Dateien werden nie stillschweigend Ã¼berschrieben: Interaktive TTY-LÃ¤ufe fragen vor dem Ersetzen, nicht-interaktive LÃ¤ufe Ã¼berspringen das Ersetzen ohne `--force` (aktive Sitzungs-SicherheitsprÃ¼fungen gelten weiterhin).
- `config.toml`-Aktualisierungen (fÃ¼r beide Bereiche):
  - `notify = ["node", "..."]`
  - `model_reasoning_effort = "high"`
  - `developer_instructions = "..."`
  - `[features] multi_agent = true, child_agents_md = true`
  - MCP-Server-EintrÃ¤ge (`QMX_state`, `QMX_memory`, `QMX_code_intel`, `QMX_trace`)
  - `[tui] status_line`
- Bereichsspezifische `AGENTS.md`
- `.QMX/`-Laufzeitverzeichnisse und HUD-Konfiguration

## Agenten und Skills

- Prompts: `prompts/*.md` (installiert nach `~/.codex/prompts/` fÃ¼r `user`, `./.codex/prompts/` fÃ¼r `project`)
- Skills: `skills/*/SKILL.md` (installiert nach `~/.codex/skills/` fÃ¼r `user`, `./.codex/skills/` fÃ¼r `project`)

Beispiele:
- Agenten: `architect`, `planner`, `executor`, `debugger`, `verifier`, `security-reviewer`
- Skills: `autopilot`, `plan`, `team`, `ralph`, `ultrawork`, `cancel`

## Projektstruktur

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

## Entwicklung

```bash
git clone https://github.com/Yeachan-Heo/oh-my-qwen.git
cd oh-my-qwen
npm install
npm run build
npm test
```

## Dokumentation

- **[VollstÃ¤ndige Dokumentation](https://yeachan-heo.github.io/oh-my-qwen-website/docs.html)** â€” Kompletter Leitfaden
- **[CLI-Referenz](https://yeachan-heo.github.io/oh-my-qwen-website/docs.html#cli-reference)** â€” Alle `QMX`-Befehle, Flags und Tools
- **[Benachrichtigungs-Leitfaden](https://yeachan-heo.github.io/oh-my-qwen-website/docs.html#notifications)** â€” Discord, Telegram, Slack und Webhook-Einrichtung
- **[Empfohlene Workflows](https://yeachan-heo.github.io/oh-my-qwen-website/docs.html#workflows)** â€” Praxiserprobte Skill-Ketten fÃ¼r hÃ¤ufige Aufgaben
- **[Versionshinweise](https://yeachan-heo.github.io/oh-my-qwen-website/docs.html#release-notes)** â€” Neuheiten in jeder Version

## Hinweise

- VollstÃ¤ndiges Ã„nderungsprotokoll: `CHANGELOG.md`
- Migrationsleitfaden (nach v0.4.4 mainline): `docs/migration-mainline-post-v0.4.4.md`
- Abdeckungs- und ParitÃ¤tsnotizen: `COVERAGE.md`
- Hook-Erweiterungs-Workflow: `docs/hooks-extension.md`
- Setup- und Beitragsdetails: `CONTRIBUTING.md`

## Danksagungen

Inspiriert von [oh-my-claudecode](https://github.com/Yeachan-Heo/oh-my-claudecode), angepasst fÃ¼r Qwen Code CLI.

## Lizenz

MIT

