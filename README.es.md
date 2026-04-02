# oh-my-qwen (QMX)

<p align="center">
  <img src="https://yeachan-heo.github.io/oh-my-qwen-website/QMX-character-nobg.png" alt="oh-my-qwen character" width="280">
  <br>
  <em>Tu codex no estÃ¡ solo.</em>
</p>

[![npm version](https://img.shields.io/npm/v/oh-my-qwen)](https://www.npmjs.com/package/oh-my-qwen)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Node.js](https://img.shields.io/badge/node-%3E%3D20-brightgreen)](https://nodejs.org)

> **[Website](https://yeachan-heo.github.io/oh-my-qwen-website/)** | **[Documentation](https://yeachan-heo.github.io/oh-my-qwen-website/docs.html)** | **[CLI Reference](https://yeachan-heo.github.io/oh-my-qwen-website/docs.html#cli-reference)** | **[Workflows](https://yeachan-heo.github.io/oh-my-qwen-website/docs.html#workflows)** | **[GuÃ­a de integraciÃ³n de OpenClaw](./docs/openclaw-integration.es.md)** | **[GitHub](https://github.com/Yeachan-Heo/oh-my-qwen)** | **[npm](https://www.npmjs.com/package/oh-my-qwen)**

Capa de orquestaciÃ³n multiagente para [OpenAI Qwen Code CLI](https://github.com/openai/codex).

## Novedades en v0.9.0 â€” Spark Initiative

Spark Initiative es la versiÃ³n que refuerza la ruta nativa de exploraciÃ³n e inspecciÃ³n en QMX.

- **Harness nativo para `QMX explore`** â€” ejecuta exploraciÃ³n de repositorio en modo solo lectura con una vÃ­a Rust mÃ¡s rÃ¡pida y mÃ¡s estricta.
- **`QMX sparkshell`** â€” superficie nativa para operadores, con resÃºmenes de salidas largas y captura explÃ­cita de paneles tmux.
- **Assets nativos multiplataforma** â€” la ruta de hidrataciÃ³n de `QMX-explore-harness`, `QMX-sparkshell` y `native-release-manifest.json` ya forma parte del pipeline de release.
- **CI/CD reforzado** â€” se aÃ±adiÃ³ configuraciÃ³n explÃ­cita de Rust en el job `build`, ademÃ¡s de `cargo fmt --check` y `cargo clippy -- -D warnings`.

Consulta tambiÃ©n las [notas de lanzamiento v0.9.0](./docs/release-notes-0.9.0.md) y el [release body](./docs/release-body-0.9.0.md).

## Primera sesiÃ³n

Dentro de Codex:

```text
/prompts:architect "analyze current auth boundaries"
/prompts:executor "implement input validation in login"
$plan "ship OAuth callback safely"
$team 3:executor "fix all TypeScript errors"
```

Desde la terminal:

```bash
QMX team 4:executor "parallelize a multi-module refactor"
QMX team status <team-name>
QMX team shutdown <team-name>
```

## Modelo central

QMX instala y conecta estas capas:

```text
User
  -> Qwen Code CLI
    -> AGENTS.md (cerebro de orquestaciÃ³n)
    -> ~/.codex/prompts/*.md (catÃ¡logo de prompts de agentes)
    -> ~/.codex/skills/*/SKILL.md (catÃ¡logo de skills)
    -> ~/.codex/config.toml (caracterÃ­sticas, notificaciones, MCP)
    -> .QMX/ (estado en ejecuciÃ³n, memoria, planes, registros)
```

## Comandos principales

```bash
QMX                # Lanzar Codex (+ HUD en tmux cuando estÃ¡ disponible)
QMX setup          # Instalar prompts/skills/config por alcance + .QMX del proyecto + AGENTS.md especÃ­fico del alcance
QMX doctor         # DiagnÃ³sticos de instalaciÃ³n/ejecuciÃ³n
QMX doctor --team  # DiagnÃ³sticos de Team/swarm
QMX team ...       # Iniciar/estado/reanudar/apagar workers tmux del equipo
QMX status         # Mostrar modos activos
QMX cancel         # Cancelar modos de ejecuciÃ³n activos
QMX reasoning <mode> # low|medium|high|xhigh
QMX tmux-hook ...  # init|status|validate|test
QMX hooks ...      # init|status|validate|test (flujo de trabajo de extensiÃ³n de plugins)
QMX hud ...        # --watch|--json|--preset
QMX help
```

## ExtensiÃ³n de Hooks (Superficie adicional)

QMX ahora incluye `QMX hooks` para scaffolding y validaciÃ³n de plugins.

- `QMX tmux-hook` sigue siendo compatible y no ha cambiado.
- `QMX hooks` es aditivo y no reemplaza los flujos de trabajo de tmux-hook.
- Los archivos de plugins se encuentran en `.QMX/hooks/*.mjs`.
- Los plugins estÃ¡n desactivados por defecto; actÃ­valos con `QMX_HOOK_PLUGINS=1`.

Consulta `docs/hooks-extension.md` para el flujo de trabajo completo de extensiones y el modelo de eventos.

## Flags de inicio

```bash
--yolo
--high
--xhigh
--madmax
--force
--dry-run
--verbose
--scope <user|project>  # solo para setup
```

`--madmax` se mapea a Codex `--dangerously-bypass-approvals-and-sandbox`.
Ãšsalo solo en entornos sandbox de confianza o externos.

### PolÃ­tica de workingDirectory MCP (endurecimiento opcional)

Por defecto, las herramientas MCP de state/memory/trace aceptan el `workingDirectory` proporcionado por el llamador.
Para restringir esto, establece una lista de raÃ­ces permitidas:

```bash
export QMX_MCP_WORKDIR_ROOTS="/path/to/project:/path/to/another-root"
```

Cuando se establece, los valores de `workingDirectory` fuera de estas raÃ­ces son rechazados.

## Control de prompts Codex-First

Por defecto, QMX inyecta:

```text
-c model_instructions_file="<cwd>/AGENTS.md"
```

Esto combina el `AGENTS.md` de `CODEX_HOME` con el `AGENTS.md` del proyecto (si existe) y luego aÃ±ade la superposiciÃ³n de runtime.
Extiende el comportamiento de Codex, pero no reemplaza ni elude las polÃ­ticas centrales del sistema Codex.

Controles:

```bash
QMX_BYPASS_DEFAULT_SYSTEM_PROMPT=0 QMX     # desactivar inyecciÃ³n de AGENTS.md
QMX_MODEL_INSTRUCTIONS_FILE=/path/to/instructions.md QMX
```

## Modo equipo

Usa el modo equipo para trabajo amplio que se beneficia de workers paralelos.

Ciclo de vida:

```text
start -> assign scoped lanes -> monitor -> verify terminal tasks -> shutdown
```

Comandos operacionales:

```bash
QMX team <args>
QMX team status <team-name>
QMX team resume <team-name>
QMX team shutdown <team-name>
```

Regla importante: no apagues mientras las tareas estÃ©n en estado `in_progress` a menos que estÃ©s abortando.

### Team shutdown policy

Use `QMX team shutdown <team-name>` after the team reaches a terminal state.
Team cleanup now follows one standalone path; there is no separate `QMX team ralph ...` shutdown policy anymore.

SelecciÃ³n de Worker CLI para los workers del equipo:

```bash
QMX_TEAM_WORKER_CLI=auto    # predeterminado; usa claude cuando worker --model contiene "claude"
QMX_TEAM_WORKER_CLI=codex   # forzar workers Qwen Code CLI
QMX_TEAM_WORKER_CLI=claude  # forzar workers Claude CLI
QMX_TEAM_WORKER_CLI_MAP=codex,codex,claude,claude  # mezcla de CLI por worker (longitud=1 o cantidad de workers)
QMX_TEAM_AUTO_INTERRUPT_RETRY=0  # opcional: desactivar fallback adaptativo queue->resend
```

Notas:
- Los argumentos de inicio de workers se comparten a travÃ©s de `QMX_TEAM_WORKER_LAUNCH_ARGS`.
- `QMX_TEAM_WORKER_CLI_MAP` anula `QMX_TEAM_WORKER_CLI` para selecciÃ³n por worker.
- El envÃ­o de triggers usa reintentos adaptativos por defecto (queue/submit, luego fallback seguro clear-line+resend cuando es necesario).
- En modo Claude worker, QMX lanza workers como `claude` simple (sin argumentos de inicio extra) e ignora anulaciones explÃ­citas de `--model` / `--config` / `--effort` para que Claude use el `settings.json` predeterminado.

## QuÃ© escribe `QMX setup`

- `.QMX/setup-scope.json` (alcance de instalaciÃ³n persistido)
- Instalaciones dependientes del alcance:
  - `user`: `~/.codex/prompts/`, `~/.codex/skills/`, `~/.codex/config.toml`, `~/.QMX/agents/`, `~/.codex/AGENTS.md`
  - `project`: `./.codex/prompts/`, `./.codex/skills/`, `./.codex/config.toml`, `./.QMX/agents/`, `./AGENTS.md`
- Comportamiento de inicio: si el alcance persistido es `project`, el lanzamiento de `QMX` usa automÃ¡ticamente `CODEX_HOME=./.codex` (a menos que `CODEX_HOME` ya estÃ© establecido).
- Las instrucciones de inicio combinan `~/.codex/AGENTS.md` (o `CODEX_HOME/AGENTS.md` si se sobrescribe) con `./AGENTS.md` del proyecto y luego aÃ±aden la superposiciÃ³n de runtime.
- Los archivos `AGENTS.md` existentes nunca se sobrescriben silenciosamente: en TTY interactivo se pregunta antes de reemplazar; en modo no interactivo se omite salvo que pases `--force` (las verificaciones de seguridad de sesiones activas siguen aplicÃ¡ndose).
- Actualizaciones de `config.toml` (para ambos alcances):
  - `notify = ["node", "..."]`
  - `model_reasoning_effort = "high"`
  - `developer_instructions = "..."`
  - `[features] multi_agent = true, child_agents_md = true`
  - Entradas de servidores MCP (`QMX_state`, `QMX_memory`, `QMX_code_intel`, `QMX_trace`)
  - `[tui] status_line`
- `AGENTS.md` especÃ­fico del alcance
- Directorios `.QMX/` de ejecuciÃ³n y configuraciÃ³n de HUD

## Agentes y skills

- Prompts: `prompts/*.md` (instalados en `~/.codex/prompts/` para `user`, `./.codex/prompts/` para `project`)
- Skills: `skills/*/SKILL.md` (instalados en `~/.codex/skills/` para `user`, `./.codex/skills/` para `project`)

Ejemplos:
- Agentes: `architect`, `planner`, `executor`, `debugger`, `verifier`, `security-reviewer`
- Skills: `autopilot`, `plan`, `team`, `ralph`, `ultrawork`, `cancel`

## Estructura del proyecto

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

## Desarrollo

```bash
git clone https://github.com/Yeachan-Heo/oh-my-qwen.git
cd oh-my-qwen
npm install
npm run build
npm test
```

## DocumentaciÃ³n

- **[DocumentaciÃ³n completa](https://yeachan-heo.github.io/oh-my-qwen-website/docs.html)** â€” GuÃ­a completa
- **[Referencia CLI](https://yeachan-heo.github.io/oh-my-qwen-website/docs.html#cli-reference)** â€” Todos los comandos `QMX`, flags y herramientas
- **[GuÃ­a de notificaciones](https://yeachan-heo.github.io/oh-my-qwen-website/docs.html#notifications)** â€” ConfiguraciÃ³n de Discord, Telegram, Slack y webhooks
- **[Flujos de trabajo recomendados](https://yeachan-heo.github.io/oh-my-qwen-website/docs.html#workflows)** â€” Cadenas de skills probadas en batalla para tareas comunes
- **[Notas de versiÃ³n](https://yeachan-heo.github.io/oh-my-qwen-website/docs.html#release-notes)** â€” Novedades en cada versiÃ³n

## Notas

- Registro de cambios completo: `CHANGELOG.md`
- GuÃ­a de migraciÃ³n (post-v0.4.4 mainline): `docs/migration-mainline-post-v0.4.4.md`
- Notas de cobertura y paridad: `COVERAGE.md`
- Flujo de trabajo de extensiÃ³n de hooks: `docs/hooks-extension.md`
- Detalles de instalaciÃ³n y contribuciÃ³n: `CONTRIBUTING.md`

## Agradecimientos

Inspirado en [oh-my-claudecode](https://github.com/Yeachan-Heo/oh-my-claudecode), adaptado para Qwen Code CLI.

## Licencia

MIT

