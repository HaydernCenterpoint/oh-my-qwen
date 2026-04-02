# oh-my-qwen (QMX)

<p align="center">
  <img src="https://yeachan-heo.github.io/oh-my-qwen-website/QMX-character-nobg.png" alt="oh-my-qwen character" width="280">
  <br>
  <em>Votre codex n'est pas seul.</em>
</p>

[![npm version](https://img.shields.io/npm/v/oh-my-qwen)](https://www.npmjs.com/package/oh-my-qwen)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Node.js](https://img.shields.io/badge/node-%3E%3D20-brightgreen)](https://nodejs.org)

> **[Website](https://yeachan-heo.github.io/oh-my-qwen-website/)** | **[Documentation](https://yeachan-heo.github.io/oh-my-qwen-website/docs.html)** | **[CLI Reference](https://yeachan-heo.github.io/oh-my-qwen-website/docs.html#cli-reference)** | **[Workflows](https://yeachan-heo.github.io/oh-my-qwen-website/docs.html#workflows)** | **[Guide dâ€™intÃ©gration OpenClaw](./docs/openclaw-integration.fr.md)** | **[GitHub](https://github.com/Yeachan-Heo/oh-my-qwen)** | **[npm](https://www.npmjs.com/package/oh-my-qwen)**

Couche d'orchestration multi-agents pour [OpenAI Qwen Code CLI](https://github.com/openai/codex).

## NouveautÃ©s de la v0.9.0 â€” Spark Initiative

Spark Initiative est la version qui renforce la voie native dâ€™exploration et dâ€™inspection dans QMX.

- **Harness natif pour `QMX explore`** â€” exÃ©cute lâ€™exploration read-only du dÃ©pÃ´t via une voie Rust plus rapide et plus stricte.
- **`QMX sparkshell`** â€” surface native orientÃ©e opÃ©rateur, avec rÃ©sumÃ©s de sorties longues et capture explicite de panneaux tmux.
- **Artifacts natifs multiplateformes** â€” le chemin dâ€™hydratation de `QMX-explore-harness`, `QMX-sparkshell` et `native-release-manifest.json` fait dÃ©sormais partie du pipeline de release.
- **CI/CD renforcÃ©** â€” ajoute une configuration explicite de la toolchain Rust dans le job `build`, ainsi que `cargo fmt --check` et `cargo clippy -- -D warnings`.

Voir aussi les [notes de version v0.9.0](./docs/release-notes-0.9.0.md) et le [corps de release](./docs/release-body-0.9.0.md).

## PremiÃ¨re session

Dans Codex :

```text
/prompts:architect "analyze current auth boundaries"
/prompts:executor "implement input validation in login"
$plan "ship OAuth callback safely"
$team 3:executor "fix all TypeScript errors"
```

Depuis le terminal :

```bash
QMX team 4:executor "parallelize a multi-module refactor"
QMX team status <team-name>
QMX team shutdown <team-name>
```

## ModÃ¨le de base

QMX installe et connecte ces couches :

```text
User
  -> Qwen Code CLI
    -> AGENTS.md (cerveau d'orchestration)
    -> ~/.codex/prompts/*.md (catalogue de prompts d'agents)
    -> ~/.codex/skills/*/SKILL.md (catalogue de skills)
    -> ~/.codex/config.toml (fonctionnalitÃ©s, notifications, MCP)
    -> .QMX/ (Ã©tat d'exÃ©cution, mÃ©moire, plans, journaux)
```

## Commandes principales

```bash
QMX                # Lancer Codex (+ HUD dans tmux si disponible)
QMX setup          # Installer prompts/skills/config par scope + .QMX du projet + AGENTS.md propre au scope
QMX doctor         # Diagnostics d'installation/exÃ©cution
QMX doctor --team  # Diagnostics Team/Swarm
QMX team ...       # DÃ©marrer/statut/reprendre/arrÃªter les workers d'Ã©quipe tmux
QMX status         # Afficher les modes actifs
QMX cancel         # Annuler les modes d'exÃ©cution actifs
QMX reasoning <mode> # low|medium|high|xhigh
QMX tmux-hook ...  # init|status|validate|test
QMX hooks ...      # init|status|validate|test (workflow d'extension de plugins)
QMX hud ...        # --watch|--json|--preset
QMX help
```

## Extension Hooks (Surface additive)

QMX inclut dÃ©sormais `QMX hooks` pour l'Ã©chafaudage et la validation de plugins.

- `QMX tmux-hook` reste supportÃ© et inchangÃ©.
- `QMX hooks` est additif et ne remplace pas les workflows tmux-hook.
- Les fichiers de plugins se trouvent dans `.QMX/hooks/*.mjs`.
- Les plugins sont dÃ©sactivÃ©s par dÃ©faut ; activez-les avec `QMX_HOOK_PLUGINS=1`.

Consultez `docs/hooks-extension.md` pour le workflow d'extension complet et le modÃ¨le d'Ã©vÃ©nements.

## Flags de lancement

```bash
--yolo
--high
--xhigh
--madmax
--force
--dry-run
--verbose
--scope <user|project>  # uniquement pour setup
```

`--madmax` correspond Ã  Codex `--dangerously-bypass-approvals-and-sandbox`.
Ã€ utiliser uniquement dans des environnements sandbox de confiance/externes.

### Politique MCP workingDirectory (durcissement optionnel)

Par dÃ©faut, les outils MCP Ã©tat/mÃ©moire/trace acceptent le `workingDirectory` fourni par l'appelant.
Pour restreindre cela, dÃ©finissez une liste d'autorisation de racines :

```bash
export QMX_MCP_WORKDIR_ROOTS="/path/to/project:/path/to/another-root"
```

Lorsque dÃ©fini, les valeurs `workingDirectory` en dehors de ces racines sont rejetÃ©es.

## ContrÃ´le Codex-First des prompts

Par dÃ©faut, QMX injecte :

```text
-c model_instructions_file="<cwd>/AGENTS.md"
```

Cela fusionne le `AGENTS.md` de `CODEX_HOME` avec le `AGENTS.md` du projet (s'il existe), puis ajoute l'overlay d'exÃ©cution.
Cela Ã©tend le comportement de Codex, mais ne remplace/contourne pas les politiques systÃ¨me de base de Codex.

ContrÃ´les :

```bash
QMX_BYPASS_DEFAULT_SYSTEM_PROMPT=0 QMX     # dÃ©sactiver l'injection AGENTS.md
QMX_MODEL_INSTRUCTIONS_FILE=/path/to/instructions.md QMX
```

## Mode Ã©quipe

Utilisez le mode Ã©quipe pour les travaux importants qui bÃ©nÃ©ficient de workers parallÃ¨les.

Cycle de vie :

```text
start -> assign scoped lanes -> monitor -> verify terminal tasks -> shutdown
```

Commandes opÃ©rationnelles :

```bash
QMX team <args>
QMX team status <team-name>
QMX team resume <team-name>
QMX team shutdown <team-name>
```

RÃ¨gle importante : n'arrÃªtez pas tant que des tÃ¢ches sont encore `in_progress`, sauf en cas d'abandon.

### Team shutdown policy

Use `QMX team shutdown <team-name>` after the team reaches a terminal state.
Team cleanup now follows one standalone path; there is no separate `QMX team ralph ...` shutdown policy anymore.

SÃ©lection du CLI worker pour les workers d'Ã©quipe :

```bash
QMX_TEAM_WORKER_CLI=auto    # par dÃ©faut ; utilise claude quand worker --model contient "claude"
QMX_TEAM_WORKER_CLI=codex   # forcer les workers Qwen Code CLI
QMX_TEAM_WORKER_CLI=claude  # forcer les workers Claude CLI
QMX_TEAM_WORKER_CLI_MAP=codex,codex,claude,claude  # mix CLI par worker (longueur=1 ou nombre de workers)
QMX_TEAM_AUTO_INTERRUPT_RETRY=0  # optionnel : dÃ©sactiver le fallback adaptatif queue->resend
```

Notes :
- Les arguments de lancement des workers sont toujours partagÃ©s via `QMX_TEAM_WORKER_LAUNCH_ARGS`.
- `QMX_TEAM_WORKER_CLI_MAP` remplace `QMX_TEAM_WORKER_CLI` pour la sÃ©lection par worker.
- La soumission de dÃ©clencheurs utilise par dÃ©faut des tentatives adaptatives (queue/submit, puis fallback sÃ©curisÃ© clear-line+resend si nÃ©cessaire).
- En mode worker Claude, QMX lance les workers en tant que simple `claude` (pas d'arguments de lancement supplÃ©mentaires) et ignore les surcharges explicites `--model` / `--config` / `--effort` pour que Claude utilise le `settings.json` par dÃ©faut.

## Ce que `QMX setup` Ã©crit

- `.QMX/setup-scope.json` (scope de setup persistÃ©)
- Installations dÃ©pendantes du scope :
  - `user` : `~/.codex/prompts/`, `~/.codex/skills/`, `~/.codex/config.toml`, `~/.QMX/agents/`, `~/.codex/AGENTS.md`
  - `project` : `./.codex/prompts/`, `./.codex/skills/`, `./.codex/config.toml`, `./.QMX/agents/`, `./AGENTS.md`
- Comportement au lancement : si le scope persistÃ© est `project`, le lancement `QMX` utilise automatiquement `CODEX_HOME=./.codex` (sauf si `CODEX_HOME` est dÃ©jÃ  dÃ©fini).
- Les instructions de lancement fusionnent `~/.codex/AGENTS.md` (ou `CODEX_HOME/AGENTS.md` s'il est redÃ©fini) avec `./AGENTS.md` du projet, puis ajoutent l'overlay d'exÃ©cution.
- Les fichiers `AGENTS.md` existants ne sont jamais Ã©crasÃ©s silencieusement : en TTY interactif, setup demande avant de remplacer ; en non-interactif, le remplacement est ignorÃ© sauf avec `--force` (les vÃ©rifications de sÃ©curitÃ© de session active s'appliquent toujours).
- Mises Ã  jour de `config.toml` (pour les deux scopes) :
  - `notify = ["node", "..."]`
  - `model_reasoning_effort = "high"`
  - `developer_instructions = "..."`
  - `[features] multi_agent = true, child_agents_md = true`
  - EntrÃ©es de serveurs MCP (`QMX_state`, `QMX_memory`, `QMX_code_intel`, `QMX_trace`)
  - `[tui] status_line`
- `AGENTS.md` spÃ©cifique au scope
- RÃ©pertoires d'exÃ©cution `.QMX/` et configuration HUD

## Agents et Skills

- Prompts : `prompts/*.md` (installÃ©s dans `~/.codex/prompts/` pour `user`, `./.codex/prompts/` pour `project`)
- Skills : `skills/*/SKILL.md` (installÃ©s dans `~/.codex/skills/` pour `user`, `./.codex/skills/` pour `project`)

Exemples :
- Agents : `architect`, `planner`, `executor`, `debugger`, `verifier`, `security-reviewer`
- Skills : `autopilot`, `plan`, `team`, `ralph`, `ultrawork`, `cancel`

## Structure du projet

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

## DÃ©veloppement

```bash
git clone https://github.com/Yeachan-Heo/oh-my-qwen.git
cd oh-my-qwen
npm install
npm run build
npm test
```

## Documentation

- **[Documentation complÃ¨te](https://yeachan-heo.github.io/oh-my-qwen-website/docs.html)** â€” Guide complet
- **[RÃ©fÃ©rence CLI](https://yeachan-heo.github.io/oh-my-qwen-website/docs.html#cli-reference)** â€” Toutes les commandes `QMX`, flags et outils
- **[Guide des notifications](https://yeachan-heo.github.io/oh-my-qwen-website/docs.html#notifications)** â€” Configuration Discord, Telegram, Slack et webhooks
- **[Workflows recommandÃ©s](https://yeachan-heo.github.io/oh-my-qwen-website/docs.html#workflows)** â€” ChaÃ®nes de skills Ã©prouvÃ©es pour les tÃ¢ches courantes
- **[Notes de version](https://yeachan-heo.github.io/oh-my-qwen-website/docs.html#release-notes)** â€” NouveautÃ©s de chaque version

## Notes

- Journal des modifications complet : `CHANGELOG.md`
- Guide de migration (post-v0.4.4 mainline) : `docs/migration-mainline-post-v0.4.4.md`
- Notes de couverture et paritÃ© : `COVERAGE.md`
- Workflow d'extension hooks : `docs/hooks-extension.md`
- DÃ©tails de configuration et contribution : `CONTRIBUTING.md`

## Remerciements

InspirÃ© par [oh-my-claudecode](https://github.com/Yeachan-Heo/oh-my-claudecode), adaptÃ© pour Qwen Code CLI.

## Licence

MIT

