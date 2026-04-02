# oh-my-qwen (QMX)

<p align="center">
  <img src="https://yeachan-heo.github.io/oh-my-qwen-website/QMX-character-nobg.png" alt="oh-my-qwen character" width="280">
  <br>
  <em>Seu codex nÃ£o estÃ¡ sozinho.</em>
</p>

[![npm version](https://img.shields.io/npm/v/oh-my-qwen)](https://www.npmjs.com/package/oh-my-qwen)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Node.js](https://img.shields.io/badge/node-%3E%3D20-brightgreen)](https://nodejs.org)

> **[Website](https://yeachan-heo.github.io/oh-my-qwen-website/)** | **[Documentation](https://yeachan-heo.github.io/oh-my-qwen-website/docs.html)** | **[CLI Reference](https://yeachan-heo.github.io/oh-my-qwen-website/docs.html#cli-reference)** | **[Workflows](https://yeachan-heo.github.io/oh-my-qwen-website/docs.html#workflows)** | **[Guia de integraÃ§Ã£o OpenClaw](./docs/openclaw-integration.pt.md)** | **[GitHub](https://github.com/Yeachan-Heo/oh-my-qwen)** | **[npm](https://www.npmjs.com/package/oh-my-qwen)**

Camada de orquestraÃ§Ã£o multiagente para [OpenAI Qwen Code CLI](https://github.com/openai/codex).

## Novidades na v0.9.0 â€” Spark Initiative

Spark Initiative Ã© a versÃ£o que fortalece o caminho nativo de exploraÃ§Ã£o e inspeÃ§Ã£o no QMX.

- **Harness nativo para `QMX explore`** â€” executa exploraÃ§Ã£o de repositÃ³rio somente leitura com uma via em Rust mais rÃ¡pida e mais restrita.
- **`QMX sparkshell`** â€” superfÃ­cie nativa voltada ao operador, com resumos de saÃ­das longas e captura explÃ­cita de painÃ©is tmux.
- **Assets nativos multiplataforma** â€” o caminho de hidrataÃ§Ã£o de `QMX-explore-harness`, `QMX-sparkshell` e `native-release-manifest.json` agora faz parte do pipeline de release.
- **CI/CD reforÃ§ado** â€” adiciona configuraÃ§Ã£o explÃ­cita de Rust no job `build`, alÃ©m de `cargo fmt --check` e `cargo clippy -- -D warnings`.

Veja tambÃ©m as [notas de release da v0.9.0](./docs/release-notes-0.9.0.md) e o [corpo do release](./docs/release-body-0.9.0.md).

## Primeira sessÃ£o

Dentro do Codex:

```text
/prompts:architect "analyze current auth boundaries"
/prompts:executor "implement input validation in login"
$plan "ship OAuth callback safely"
$team 3:executor "fix all TypeScript errors"
```

Do terminal:

```bash
QMX team 4:executor "parallelize a multi-module refactor"
QMX team status <team-name>
QMX team shutdown <team-name>
```

## Modelo central

QMX instala e conecta estas camadas:

```text
User
  -> Qwen Code CLI
    -> AGENTS.md (cÃ©rebro de orquestraÃ§Ã£o)
    -> ~/.codex/prompts/*.md (catÃ¡logo de prompts de agentes)
    -> ~/.codex/skills/*/SKILL.md (catÃ¡logo de skills)
    -> ~/.codex/config.toml (funcionalidades, notificaÃ§Ãµes, MCP)
    -> .QMX/ (estado de execuÃ§Ã£o, memÃ³ria, planos, logs)
```

## Comandos principais

```bash
QMX                # Iniciar Codex (+ HUD no tmux quando disponÃ­vel)
QMX setup          # Instalar prompts/skills/config por escopo + .QMX do projeto + AGENTS.md especÃ­fico do escopo
QMX doctor         # DiagnÃ³sticos de instalaÃ§Ã£o/execuÃ§Ã£o
QMX doctor --team  # DiagnÃ³sticos de Team/swarm
QMX team ...       # Iniciar/status/retomar/encerrar workers tmux da equipe
QMX status         # Mostrar modos ativos
QMX cancel         # Cancelar modos de execuÃ§Ã£o ativos
QMX reasoning <mode> # low|medium|high|xhigh
QMX tmux-hook ...  # init|status|validate|test
QMX hooks ...      # init|status|validate|test (fluxo de trabalho de extensÃ£o de plugins)
QMX hud ...        # --watch|--json|--preset
QMX help
```

## ExtensÃ£o de Hooks (SuperfÃ­cie adicional)

QMX agora inclui `QMX hooks` para scaffolding e validaÃ§Ã£o de plugins.

- `QMX tmux-hook` continua sendo suportado e nÃ£o foi alterado.
- `QMX hooks` Ã© aditivo e nÃ£o substitui os fluxos de trabalho do tmux-hook.
- Arquivos de plugins ficam em `.QMX/hooks/*.mjs`.
- Plugins estÃ£o desativados por padrÃ£o; ative com `QMX_HOOK_PLUGINS=1`.

Consulte `docs/hooks-extension.md` para o fluxo de trabalho completo de extensÃµes e modelo de eventos.

## Flags de inicializaÃ§Ã£o

```bash
--yolo
--high
--xhigh
--madmax
--force
--dry-run
--verbose
--scope <user|project>  # apenas para setup
```

`--madmax` mapeia para Codex `--dangerously-bypass-approvals-and-sandbox`.
Use apenas em ambientes sandbox confiÃ¡veis ou externos.

### PolÃ­tica de workingDirectory MCP (endurecimento opcional)

Por padrÃ£o, as ferramentas MCP de state/memory/trace aceitam o `workingDirectory` fornecido pelo chamador.
Para restringir isso, defina uma lista de raÃ­zes permitidas:

```bash
export QMX_MCP_WORKDIR_ROOTS="/path/to/project:/path/to/another-root"
```

Quando definido, valores de `workingDirectory` fora dessas raÃ­zes sÃ£o rejeitados.

## Controle de prompts Codex-First

Por padrÃ£o, QMX injeta:

```text
-c model_instructions_file="<cwd>/AGENTS.md"
```

Isso combina o `AGENTS.md` de `CODEX_HOME` com o `AGENTS.md` do projeto (se existir) e depois adiciona o overlay de runtime.
Estende o comportamento do Codex, mas nÃ£o substitui nem contorna as polÃ­ticas centrais do sistema Codex.

Controles:

```bash
QMX_BYPASS_DEFAULT_SYSTEM_PROMPT=0 QMX     # desativar injeÃ§Ã£o de AGENTS.md
QMX_MODEL_INSTRUCTIONS_FILE=/path/to/instructions.md QMX
```

## Modo equipe

Use o modo equipe para trabalhos amplos que se beneficiam de workers paralelos.

Ciclo de vida:

```text
start -> assign scoped lanes -> monitor -> verify terminal tasks -> shutdown
```

Comandos operacionais:

```bash
QMX team <args>
QMX team status <team-name>
QMX team resume <team-name>
QMX team shutdown <team-name>
```

Regra importante: nÃ£o encerre enquanto tarefas estiverem em estado `in_progress`, a menos que esteja abortando.

### Team shutdown policy

Use `QMX team shutdown <team-name>` after the team reaches a terminal state.
Team cleanup now follows one standalone path; there is no separate `QMX team ralph ...` shutdown policy anymore.

SeleÃ§Ã£o de Worker CLI para workers da equipe:

```bash
QMX_TEAM_WORKER_CLI=auto    # padrÃ£o; usa claude quando worker --model contÃ©m "claude"
QMX_TEAM_WORKER_CLI=codex   # forÃ§ar workers Qwen Code CLI
QMX_TEAM_WORKER_CLI=claude  # forÃ§ar workers Claude CLI
QMX_TEAM_WORKER_CLI_MAP=codex,codex,claude,claude  # mix de CLI por worker (comprimento=1 ou quantidade de workers)
QMX_TEAM_AUTO_INTERRUPT_RETRY=0  # opcional: desativar fallback adaptativo queue->resend
```

Notas:
- Argumentos de inicializaÃ§Ã£o de workers sÃ£o compartilhados via `QMX_TEAM_WORKER_LAUNCH_ARGS`.
- `QMX_TEAM_WORKER_CLI_MAP` sobrescreve `QMX_TEAM_WORKER_CLI` para seleÃ§Ã£o por worker.
- O envio de triggers usa retentativas adaptativas por padrÃ£o (queue/submit, depois fallback seguro clear-line+resend quando necessÃ¡rio).
- No modo Claude worker, QMX inicia workers como `claude` simples (sem argumentos extras de inicializaÃ§Ã£o) e ignora substituiÃ§Ãµes explÃ­citas de `--model` / `--config` / `--effort` para que o Claude use o `settings.json` padrÃ£o.

## O que `QMX setup` grava

- `.QMX/setup-scope.json` (escopo de instalaÃ§Ã£o persistido)
- InstalaÃ§Ãµes dependentes do escopo:
  - `user`: `~/.codex/prompts/`, `~/.codex/skills/`, `~/.codex/config.toml`, `~/.QMX/agents/`, `~/.codex/AGENTS.md`
  - `project`: `./.codex/prompts/`, `./.codex/skills/`, `./.codex/config.toml`, `./.QMX/agents/`, `./AGENTS.md`
- Comportamento de inicializaÃ§Ã£o: se o escopo persistido for `project`, o lanÃ§amento do `QMX` usa automaticamente `CODEX_HOME=./.codex` (a menos que `CODEX_HOME` jÃ¡ esteja definido).
- As instruÃ§Ãµes de inicializaÃ§Ã£o combinam `~/.codex/AGENTS.md` (ou `CODEX_HOME/AGENTS.md`, quando sobrescrito) com o `./AGENTS.md` do projeto e depois adicionam o overlay de runtime.
- Arquivos `AGENTS.md` existentes nunca sÃ£o sobrescritos silenciosamente: em TTY interativo o setup pergunta antes de substituir; em modo nÃ£o interativo a substituiÃ§Ã£o Ã© ignorada, a menos que vocÃª use `--force` (verificaÃ§Ãµes de seguranÃ§a de sessÃµes ativas continuam valendo).
- AtualizaÃ§Ãµes do `config.toml` (para ambos os escopos):
  - `notify = ["node", "..."]`
  - `model_reasoning_effort = "high"`
  - `developer_instructions = "..."`
  - `[features] multi_agent = true, child_agents_md = true`
  - Entradas de servidores MCP (`QMX_state`, `QMX_memory`, `QMX_code_intel`, `QMX_trace`)
  - `[tui] status_line`
- `AGENTS.md` especÃ­fico do escopo
- DiretÃ³rios `.QMX/` de execuÃ§Ã£o e configuraÃ§Ã£o do HUD

## Agentes e skills

- Prompts: `prompts/*.md` (instalados em `~/.codex/prompts/` para `user`, `./.codex/prompts/` para `project`)
- Skills: `skills/*/SKILL.md` (instalados em `~/.codex/skills/` para `user`, `./.codex/skills/` para `project`)

Exemplos:
- Agentes: `architect`, `planner`, `executor`, `debugger`, `verifier`, `security-reviewer`
- Skills: `autopilot`, `plan`, `team`, `ralph`, `ultrawork`, `cancel`

## Estrutura do projeto

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

## Desenvolvimento

```bash
git clone https://github.com/Yeachan-Heo/oh-my-qwen.git
cd oh-my-qwen
npm install
npm run build
npm test
```

## DocumentaÃ§Ã£o

- **[DocumentaÃ§Ã£o completa](https://yeachan-heo.github.io/oh-my-qwen-website/docs.html)** â€” Guia completo
- **[ReferÃªncia CLI](https://yeachan-heo.github.io/oh-my-qwen-website/docs.html#cli-reference)** â€” Todos os comandos `QMX`, flags e ferramentas
- **[Guia de notificaÃ§Ãµes](https://yeachan-heo.github.io/oh-my-qwen-website/docs.html#notifications)** â€” ConfiguraÃ§Ã£o de Discord, Telegram, Slack e webhooks
- **[Fluxos de trabalho recomendados](https://yeachan-heo.github.io/oh-my-qwen-website/docs.html#workflows)** â€” Cadeias de skills testadas em batalha para tarefas comuns
- **[Notas de versÃ£o](https://yeachan-heo.github.io/oh-my-qwen-website/docs.html#release-notes)** â€” Novidades em cada versÃ£o

## Notas

- Log de alteraÃ§Ãµes completo: `CHANGELOG.md`
- Guia de migraÃ§Ã£o (pÃ³s-v0.4.4 mainline): `docs/migration-mainline-post-v0.4.4.md`
- Notas de cobertura e paridade: `COVERAGE.md`
- Fluxo de trabalho de extensÃ£o de hooks: `docs/hooks-extension.md`
- Detalhes de instalaÃ§Ã£o e contribuiÃ§Ã£o: `CONTRIBUTING.md`

## Agradecimentos

Inspirado em [oh-my-claudecode](https://github.com/Yeachan-Heo/oh-my-claudecode), adaptado para Qwen Code CLI.

## LicenÃ§a

MIT

