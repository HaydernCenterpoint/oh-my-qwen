# Installation Guide

Complete installation guide for oh-my-qwen (OMQ) - Multi-agent orchestration layer for Qwen Code CLI.

---

## ðŸ“‹ Table of Contents

- [Requirements](#requirements)
- [Quick Install](#quick-install)
- [Step-by-Step Installation](#step-by-step-installation)
- [Configuration](#configuration)
- [Verify Installation](#verify-installation)
- [Troubleshooting](#troubleshooting)
- [Platform-Specific Guides](#platform-specific-guides)

---

## ðŸš€ Requirements

Before installing oh-my-qwen, ensure you have:

| Requirement | Version | Required For |
|-------------|---------|--------------|
| **Node.js** | 20.x or higher | Core runtime |
| **npm** | 9.x or higher | Package management |
| **Qwen Code CLI** | Latest | AI agent execution |
| **Git** | Any recent version | Version control |
| **tmux** | 3.0+ (macOS/Linux) | Team mode |
| **psmux** | Latest (Windows) | Team mode on Windows |

### Check Your System

```bash
# Check Node.js version
node --version  # Should be v20.x or higher

# Check npm version
npm --version   # Should be 9.x or higher

# Check if Qwen Code is installed
qwen-code --version

# Check Git
git --version
```

---

## âš¡ Quick Install

For experienced users who want to get started immediately:

```bash
# 1. Install Qwen Code CLI and oh-my-qwen globally
npm install -g @anthropic/qwen-code oh-my-qwen

# 2. Setup skills and workflows
omq setup

# 3. Launch with recommended settings
omq --high

# 4. Start using workflow keywords
# In the Qwen Code session:
$architect "analyze this codebase"
$plan "create implementation plan"
```

---

## ðŸ“¦ Step-by-Step Installation

### Step 1: Install Node.js

#### macOS
```bash
# Using Homebrew
brew install node@20

# Or download from https://nodejs.org
```

#### Windows
```bash
# Download installer from https://nodejs.org
# Run the installer and follow prompts
```

#### Linux (Ubuntu/Debian)
```bash
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -
sudo apt-get install -y nodejs
```

#### Linux (Fedora/RHEL)
```bash
curl -fsSL https://rpm.nodesource.com/setup_20.x | sudo bash -
sudo dnf install -y nodejs
```

### Step 2: Install Qwen Code CLI

```bash
# Install globally
npm install -g @anthropic/qwen-code

# Verify installation
qwen-code --version
```

### Step 3: Configure Qwen Code API Key

```bash
# Run Qwen Code setup
qwen-code login

# Or set environment variable
export QWEN_API_KEY="your-api-key-here"

# For permanent setup, add to ~/.bashrc or ~/.zshrc
echo 'export QWEN_API_KEY="your-api-key-here"' >> ~/.bashrc
source ~/.bashrc
```

### Step 4: Install oh-my-qwen

```bash
# Install globally
npm install -g oh-my-qwen

# Verify installation
omq --version
```

### Step 5: Setup Skills and Workflows

```bash
# Initialize oh-my-qwen in your project
omq setup

# This will:
# - Create .qwen-code/ directory with config
# - Install skills and prompts
# - Setup AGENTS.md
# - Configure MCP servers
```

### Step 6: Verify Installation

```bash
# Run doctor command
omq doctor

# Expected output:
# âœ… oh-my-qwen is installed
# âœ… Qwen Code CLI is installed
# âœ… Skills are installed
# âœ… Configuration is valid
```

---

## âš™ï¸ Configuration

### Basic Configuration

Create or edit `~/.qwen-code/config.toml`:

```toml
# Model configuration
model = "qwen-max"

# Reasoning effort (low, medium, high, xhigh)
model_reasoning_effort = "high"

# TUI configuration
[tui]
theme = "dark"
```

### oh-my-qwen Configuration

Create `.QMX-config.json` in your project root:

```json
{
  "env": {
    "QMX_DEFAULT_FRONTIER_MODEL": "qwen-max",
    "QMX_DEFAULT_STANDARD_MODEL": "qwen-plus",
    "QMX_DEFAULT_SPARK_MODEL": "qwen-turbo"
  },
  "models": {
    "default": "qwen-max",
    "team": "qwen-plus"
  }
}
```

### Environment Variables

Add to `~/.bashrc`, `~/.zshrc`, or `~/.profile`:

```bash
# Qwen Code API Key
export QWEN_API_KEY="your-api-key"

# oh-my-qwen home directory (optional)
export QWEN_CODE_HOME="$HOME/.qwen-code"

# Enable verbose logging (optional)
export QMX_VERBOSE="1"

# Enable mouse scrolling in tmux (optional)
export QMX_MOUSE="1"
```

---

## âœ… Verify Installation

### Run Doctor Command

```bash
omq doctor
```

### Test Basic Functionality

```bash
# Launch oh-my-qwen
omq --high

# In the session, try:
$architect "analyze the current directory"
```

### Check Skills Installation

```bash
# List installed skills
ls -la ~/.qwen-code/skills/

# Or for project-level skills
ls -la .qwen-code/skills/
```

### Verify MCP Servers

```bash
# Check MCP configuration
QMX doctor --team
```

---

## ðŸ”§ Troubleshooting

### Issue: "command not found: omq"

**Solution:**
```bash
# Add npm global bin to PATH
export PATH="$HOME/.npm-global/bin:$PATH"

# Or for default npm location
export PATH="$HOME/.npm/bin:$PATH"

# Add to ~/.bashrc or ~/.zshrc for permanence
echo 'export PATH="$HOME/.npm-global/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc
```

### Issue: "npm ERR! code EACCES"

**Solution (macOS/Linux):**
```bash
# Fix npm permissions
mkdir ~/.npm-global
npm config set prefix '~/.npm-global'
echo 'export PATH=~/.npm-global/bin:$PATH' >> ~/.bashrc
source ~/.bashrc
```

**Solution (Windows):**
```bash
# Run Command Prompt or PowerShell as Administrator
npm install -g oh-my-qwen
```

### Issue: "Qwen Code CLI not found"

**Solution:**
```bash
# Reinstall Qwen Code CLI
npm uninstall -g @anthropic/qwen-code
npm install -g @anthropic/qwen-code

# Verify
qwen-code --version
```

### Issue: "Node.js version too old"

**Solution:**
```bash
# Install nvm (Node Version Manager)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash

# Install Node.js 20
nvm install 20
nvm use 20
nvm alias default 20

# Verify
node --version  # Should show v20.x.x
```

### Issue: tmux not found (for team mode)

**macOS:**
```bash
brew install tmux
```

**Ubuntu/Debian:**
```bash
sudo apt install tmux
```

**Fedora:**
```bash
sudo dnf install tmux
```

**Windows:**
```bash
winget install psmux
```

---

## ðŸ–¥ï¸ Platform-Specific Guides

### macOS

```bash
# Install prerequisites
brew install node@20 git tmux

# Install Qwen Code and oh-my-qwen
npm install -g @anthropic/qwen-code oh-my-qwen

# Setup
omq setup

# Test
omq --high
```

### Windows

```bash
# Install Node.js from https://nodejs.org
# Install Git from https://git-scm.com

# Install psmux for team mode
winget install psmux

# Install Qwen Code and oh-my-qwen (as Administrator)
npm install -g @anthropic/qwen-code oh-my-qwen

# Setup
omq setup

# Test
omq --high
```

### WSL2 (Windows Subsystem for Linux)

```bash
# In WSL2 terminal
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -
sudo apt-get install -y nodejs git tmux

# Install globally
npm install -g @anthropic/qwen-code oh-my-qwen

# Setup
omq setup

# Test
omq --high
```

### Linux (Ubuntu/Debian)

```bash
# Install prerequisites
sudo apt update
sudo apt install -y nodejs npm git tmux

# Install Qwen Code and oh-my-qwen
npm install -g @anthropic/qwen-code oh-my-qwen

# Setup
omq setup

# Test
omq --high
```

### Linux (Fedora/RHEL)

```bash
# Install prerequisites
sudo dnf install -y nodejs git tmux

# Install Qwen Code and oh-my-qwen
npm install -g @anthropic/qwen-code oh-my-qwen

# Setup
omq setup

# Test
omq --high
```

---

## ðŸŽ¯ Post-Installation Setup

### 1. Create Your First Project

```bash
# Create new project directory
mkdir my-qwen-project
cd my-qwen-project

# Initialize oh-my-qwen
omq setup

# Create AGENTS.md
cat > AGENTS.md << 'EOF'
# Project Agents

This project uses oh-my-qwen for workflow orchestration.

## Available Skills
- `$architect` - Architecture analysis
- `$executor` - Implementation
- `$plan` - Planning
- `$ralph` - Persistent execution

## State Directory
- `.QMX/` - Runtime state, plans, logs
EOF
```

### 2. Test Workflows

```bash
# Launch oh-my-qwen
omq --high

# Try workflows in the session:
$architect "analyze this project structure"
$plan "create a REST API with user authentication"
```

### 3. Configure Your Editor

#### VS Code

Install extensions:
- Qwen Code (if available)
- Markdown All in One
- GitLens

#### JetBrains IDEs

Install plugins:
- Qwen Code Assistant
- Markdown support

---

## ðŸ“š Additional Resources

### Documentation

- [Getting Started](./docs/getting-started.html)
- [Skills Reference](./docs/skills.html)
- [Agent Catalog](./docs/agents.html)
- [OpenCode & Cline Integration](./INSTALL-OPENCODE-CLINE.md)

### Community

- [GitHub Issues](https://github.com/your-username/oh-my-qwen/issues)
- [Discord Community](https://discord.gg/your-invite)
- [Discussions](https://github.com/your-username/oh-my-qwen/discussions)

### Tutorials

- [Quick Start Guide](./DEMO.md)
- [Migration from oh-my-codex](./MIGRATION_TO_QWEN.md)
- [Team Mode Guide](./docs/team-mode.html)

---

## ðŸ†˜ Getting Help

### Common Commands

```bash
# Show help
omq --help

# Show version
omq version

# Check installation
omq doctor

# Setup skills
omq setup

# Launch with high reasoning
omq --high

# Launch with madmax mode
omq --madmax

# Show active modes
omq status

# Cancel active modes
omq cancel
```

### Support Channels

1. **GitHub Issues**: Report bugs and feature requests
2. **Discussions**: Ask questions and share ideas
3. **Discord**: Real-time chat with community
4. **Documentation**: Check docs first

---

## ðŸŽ‰ Next Steps

After successful installation:

1. âœ… Read [Getting Started Guide](./docs/getting-started.html)
2. âœ… Try your first workflow: `$plan "..."`
3. âœ… Explore available skills: `/skills`
4. âœ… Join the community on Discord
5. âœ… Star the repository on GitHub â­

**Happy coding with oh-my-qwen! ðŸš€**

