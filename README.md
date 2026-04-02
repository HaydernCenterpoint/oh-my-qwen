# oh-my-qwen (QMX)

[![npm version](https://img.shields.io/npm/v/oh-my-qwen)](https://www.npmjs.com/package/oh-my-qwen)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Node.js](https://img.shields.io/badge/node-%3E%3D20-brightgreen)](https://nodejs.org)
[![Discord](https://img.shields.io/discord/1452487457085063218?color=5865F2&logo=discord&logoColor=white&label=Discord)](https://discord.gg/PUwSMR9XNk)

**Website:** https://yeachan-heo.github.io/oh-my-codex-website/  
**Docs:** [Getting Started](./docs/getting-started.html) · [Agents](./docs/agents.html) · [Skills](./docs/skills.html) · [Integrations](./docs/integrations.html) · [Demo](./DEMO.md)

**Forked from:** [oh-my-codex](https://github.com/Yeachan-Heo/oh-my-codex) by Yeachan Heo

QMX is a workflow enhancement layer for AI coding CLI (**Qwen Code** or **OpenCode**).

It keeps your AI coding assistant as the execution engine and makes it easier to:
- ✅ Start a stronger session by default
- ✅ Reuse role/task invocations with `$name` keywords
- ✅ Invoke workflows with skills like `$plan`, `$ralph`, and `$team`
- ✅ Keep project guidance, plans, logs, and state in `.qmx/`

---

## 🚀 Quick Start

### Option 1: Qwen Code CLI

```bash
# Install Qwen Code CLI and oh-my-qwen
npm install -g @anthropic/qwen-code oh-my-qwen

# Setup
qmx setup

# Launch with recommended settings
qmx --high
```

### Option 2: OpenCode CLI

```bash
# Install OpenCode CLI and oh-my-qwen
npm install -g opencode oh-my-qwen

# Setup
qmx setup

# Launch with recommended settings
qmx --high
```

### Using Workflows

Once inside your AI coding session:

```text
$architect "analyze the authentication flow"
$plan "ship this feature cleanly"
$executor "implement the login feature"
$ralph "fix all failing tests"
```

---

## 📋 Requirements

| Requirement | Version | Notes |
|-------------|---------|-------|
| **Node.js** | 20.x+ | Required runtime |
| **npm** | 9.x+ | Package management |
| **Qwen Code CLI** or **OpenCode CLI** | Latest | AI agent execution |
| **tmux** | 3.0+ | Team mode (macOS/Linux) |
| **psmux** | Latest | Team mode (Windows) |

### Install Dependencies

**macOS:**
```bash
brew install node@20 git tmux
```

**Linux (Ubuntu/Debian):**
```bash
sudo apt install nodejs npm git tmux
```

**Windows:**
```bash
winget install OpenJS.NodeJS.LTS Git.Git psmux
```

---

## 🎯 What QMX is for

Use QMX if you already like AI coding assistants and want better workflows:

- ✅ **Role keywords** like `$architect`, `$executor`, `$planner`
- ✅ **Workflow skills** like `$plan`, `$ralph`, `$team`, `$deep-interview`
- ✅ **Project guidance** through scoped `AGENTS.md`
- ✅ **Durable state** under `.qmx/` for plans, logs, memory

If you want plain CLI with no extra workflow layer, you don't need QMX.

---

## 📚 Common Workflows

### Role Keywords

| Keyword | Use For |
|---------|---------|
| `$architect` | Analysis, boundaries, tradeoffs |
| `$executor` | Focused implementation work |
| `$planner` | Work plans and sequencing |
| `$debugger` | Root-cause analysis |
| `$verifier` | Completion evidence and validation |

### Workflow Skills

| Keyword | Use For |
|---------|---------|
| `$plan` | Planning before implementation |
| `$ralph` | Persistent execution (don't stop until complete) |
| `$team` | Multi-agent coordination for large tasks |
| `$deep-interview` | Socratic clarification of requirements |
| `$analyze` | Deep investigation |
| `$code-review` | Systematic code review |
| `$security-review` | Security audit |
| `$tdd` | Test-driven development |

---

## 🛠️ Advanced Usage

### Team Runtime

For coordinated parallel work:

```bash
# From terminal (not in-session)
qmx team 3:executor "fix the failing tests"
qmx team status <team-name>
qmx team resume <team-name>
qmx team shutdown <team-name>
```

### Explore & Sparkshell

```bash
# Read-only repository lookup
qmx explore --prompt "find where auth is implemented"

# Shell-native inspection
qmx sparkshell git status
qmx sparkshell --tmux-pane %12 --tail-lines 400
```

### Setup & Diagnostics

```bash
# Install skills and workflows
qmx setup

# Verify installation
qmx doctor

# Show active modes
qmx status

# Cancel active modes
qmx cancel
```

---

## 📁 Project Structure

```
your-project/
├── .qmx/                    # QMX runtime state
│   ├── state/              # Mode state files
│   ├── plans/              # PRDs and test specs
│   ├── logs/               # Session logs
│   └── notepad.md          # Session notes
├── .qwen-code/ or .opencode/
│   ├── agents/             # Native agent definitions
│   ├── skills/             # Installed skills
│   └── prompts/            # Custom prompts
├── AGENTS.md               # Project orchestration brain
└── .qmx-config.json        # QMX configuration
```

---

## 🌍 Languages

- [English](README.md)
- [한국어](README.ko.md) 🇰🇷
- [日本語](README.ja.md) 🇯🇵
- [简体中文](README.zh.md) 🇨🇳
- [繁體中文](README.zh-TW.md) 🇹
- [Tiếng Việt](README.vi.md) 🇻🇳
- [Español](README.es.md) 🇪🇸
- [Português](README.pt.md) 🇵
- [Русский](README.ru.md) 🇷
- [Türkçe](README.tr.md) 🇹🇷
- [Deutsch](README.de.md) 🇩
- [Français](README.fr.md) 🇫
- [Italiano](README.it.md) 🇮

---

## 📖 Documentation

- [Getting Started](./docs/getting-started.html)
- [Demo Guide](./DEMO.md)
- [Agent Catalog](./docs/agents.html)
- [Skills Reference](./docs/skills.html)
- [Integrations](./docs/integrations.html)
- [Contributing](./CONTRIBUTING.md)
- [Changelog](./CHANGELOG.md)

---

## 🤝 Contributing

We welcome contributions! See [CONTRIBUTING.md](./CONTRIBUTING.md) for guidelines.

### Quick Start for Contributors

```bash
# Fork and clone
git clone https://github.com/HaydernCenterpoint/oh-my-qwen.git
cd oh-my-qwen

# Install dependencies
npm install

# Build
npm run build

# Run tests
npm test

# Link for local testing
npm link
qmx setup
```

---

## 🙏 Acknowledgments

This project is a fork of [oh-my-codex](https://github.com/Yeachan-Heo/oh-my-codex) by Yeachan Heo, adapted for Qwen Code CLI and OpenCode CLI.

Special thanks to:
- [Yeachan Heo](https://github.com/Yeachan-Heo) - Original oh-my-codex creator
- [Qwen Team](https://github.com/QwenLM) - Qwen Code CLI
- [OpenCode Team](https://github.com/OpenCode1145/opencode) - OpenCode CLI
- All contributors and the open-source community

---

## 📄 License

MIT License - see [LICENSE](LICENSE) for details.

---

## 🔗 Links

- **GitHub:** https://github.com/HaydernCenterpoint/oh-my-qwen
- **npm:** https://www.npmjs.com/package/oh-my-qwen
- **Discord:** https://discord.gg/PUwSMR9XNk
- **Issues:** https://github.com/HaydernCenterpoint/oh-my-qwen/issues

---

<div align="center">

**Made with ❤️ for AI coding communities**

[![Star History Chart](https://api.star-history.com/svg?repos=HaydernCenterpoint/oh-my-qwen&type=Date)](https://star-history.com/#HaydernCenterpoint/oh-my-qwen&Date)

</div>
