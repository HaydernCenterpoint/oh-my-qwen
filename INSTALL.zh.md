# å®‰è£…æŒ‡å—

oh-my-qwen (OMQ) å®Œæ•´å®‰è£…æŒ‡å— - Qwen Code CLI çš„å¤šæ™ºèƒ½ä½“ç¼–æŽ’å±‚ã€‚

---

## ðŸ“‹ ç›®å½•

- [ç³»ç»Ÿè¦æ±‚](#ç³»ç»Ÿè¦æ±‚)
- [å¿«é€Ÿå®‰è£…](#å¿«é€Ÿå®‰è£…)
- [åˆ†æ­¥å®‰è£…](#åˆ†æ­¥å®‰è£…)
- [é…ç½®](#é…ç½®)
- [éªŒè¯å®‰è£…](#éªŒè¯å®‰è£…)
- [æ•…éšœæŽ’é™¤](#æ•…éšœæŽ’é™¤)
- [å¹³å°ç‰¹å®šæŒ‡å—](#å¹³å°ç‰¹å®šæŒ‡å—)

---

## ðŸš€ ç³»ç»Ÿè¦æ±‚

å®‰è£… oh-my-qwen ä¹‹å‰ï¼Œè¯·ç¡®ä¿æ‚¨æ‹¥æœ‰ï¼š

| è¦æ±‚ | ç‰ˆæœ¬ | ç”¨é€” |
|------|------|------|
| **Node.js** | 20.x æˆ–æ›´é«˜ | æ ¸å¿ƒè¿è¡Œæ—¶ |
| **npm** | 9.x æˆ–æ›´é«˜ | åŒ…ç®¡ç† |
| **Qwen Code CLI** | æœ€æ–°ç‰ˆ | AI ä»£ç†æ‰§è¡Œ |
| **Git** | ä»»ä½•è¿‘æœŸç‰ˆæœ¬ | ç‰ˆæœ¬æŽ§åˆ¶ |
| **tmux** | 3.0+ (macOS/Linux) | å›¢é˜Ÿæ¨¡å¼ |
| **psmux** | æœ€æ–°ç‰ˆ (Windows) | Windows å›¢é˜Ÿæ¨¡å¼ |

### æ£€æŸ¥ç³»ç»Ÿ

```bash
# æ£€æŸ¥ Node.js ç‰ˆæœ¬
node --version  # åº”è¯¥æ˜¯ v20.x æˆ–æ›´é«˜

# æ£€æŸ¥ npm ç‰ˆæœ¬
npm --version   # åº”è¯¥æ˜¯ 9.x æˆ–æ›´é«˜

# æ£€æŸ¥ Qwen Code æ˜¯å¦å·²å®‰è£…
qwen-code --version

# æ£€æŸ¥ Git
git --version
```

---

## âš¡ å¿«é€Ÿå®‰è£…

é€‚ç”¨äºŽæƒ³è¦ç«‹å³å¼€å§‹ä½¿ç”¨çš„æœ‰ç»éªŒç”¨æˆ·ï¼š

```bash
# 1. å…¨å±€å®‰è£… Qwen Code CLI å’Œ oh-my-qwen
npm install -g @anthropic/qwen-code oh-my-qwen

# 2. è®¾ç½® skills å’Œ workflows
omq setup

# 3. ä½¿ç”¨æŽ¨èè®¾ç½®å¯åŠ¨
omq --high

# 4. å¼€å§‹ä½¿ç”¨ workflow å…³é”®å­—
# åœ¨ Qwen Code ä¼šè¯ä¸­ï¼š
$architect "analyze this codebase"
$plan "create implementation plan"
```

---

## ðŸ“¦ åˆ†æ­¥å®‰è£…

### æ­¥éª¤ 1: å®‰è£… Node.js

#### macOS
```bash
# ä½¿ç”¨ Homebrew
brew install node@20

# æˆ–ä»Ž https://nodejs.org ä¸‹è½½
```

#### Windows
```bash
# ä»Ž https://nodejs.org ä¸‹è½½å®‰è£…ç¨‹åº
# è¿è¡Œå®‰è£…ç¨‹åºå¹¶æŒ‰ç…§æç¤ºæ“ä½œ
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

### æ­¥éª¤ 2: å®‰è£… Qwen Code CLI

```bash
# å…¨å±€å®‰è£…
npm install -g @anthropic/qwen-code

# éªŒè¯å®‰è£…
qwen-code --version
```

### æ­¥éª¤ 3: é…ç½® Qwen Code API å¯†é’¥

```bash
# è¿è¡Œ Qwen Code è®¾ç½®
qwen-code login

# æˆ–è®¾ç½®çŽ¯å¢ƒå˜é‡
export QWEN_API_KEY="your-api-key-here"

# æ°¸ä¹…è®¾ç½®ï¼Œæ·»åŠ åˆ° ~/.bashrc æˆ– ~/.zshrc
echo 'export QWEN_API_KEY="your-api-key-here"' >> ~/.bashrc
source ~/.bashrc
```

### æ­¥éª¤ 4: å®‰è£… oh-my-qwen

```bash
# å…¨å±€å®‰è£…
npm install -g oh-my-qwen

# éªŒè¯å®‰è£…
omq --version
```

### æ­¥éª¤ 5: è®¾ç½® Skills å’Œ Workflows

```bash
# åœ¨é¡¹ç›®ä¸­åˆå§‹åŒ– oh-my-qwen
omq setup

# è¿™å°†ï¼š
# - åˆ›å»ºå¸¦æœ‰é…ç½®çš„ .qwen-code/ ç›®å½•
# - å®‰è£… skills å’Œ prompts
# - è®¾ç½® AGENTS.md
# - é…ç½® MCP servers
```

### æ­¥éª¤ 6: éªŒè¯å®‰è£…

```bash
# è¿è¡Œ doctor å‘½ä»¤
omq doctor

# é¢„æœŸè¾“å‡ºï¼š
# âœ… oh-my-qwen å·²å®‰è£…
# âœ… Qwen Code CLI å·²å®‰è£…
# âœ… skills å·²å®‰è£…
# âœ… é…ç½®æœ‰æ•ˆ
```

---

## âš™ï¸ é…ç½®

### åŸºæœ¬é…ç½®

åˆ›å»ºæˆ–ç¼–è¾‘ `~/.qwen-code/config.toml`ï¼š

```toml
# æ¨¡åž‹é…ç½®
model = "qwen-max"

# æŽ¨ç†åŠªåŠ›ç¨‹åº¦ (low, medium, high, xhigh)
model_reasoning_effort = "high"

# TUI é…ç½®
[tui]
theme = "dark"
```

### oh-my-qwen é…ç½®

åœ¨é¡¹ç›®æ ¹ç›®å½•åˆ›å»º `.QMX-config.json`ï¼š

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

### çŽ¯å¢ƒå˜é‡

æ·»åŠ åˆ° `~/.bashrc`ã€`~/.zshrc` æˆ– `~/.profile`ï¼š

```bash
# Qwen Code API å¯†é’¥
export QWEN_API_KEY="your-api-key"

# oh-my-qwen ä¸»ç›®å½•ï¼ˆå¯é€‰ï¼‰
export QWEN_CODE_HOME="$HOME/.qwen-code"

# å¯ç”¨è¯¦ç»†æ—¥å¿—ï¼ˆå¯é€‰ï¼‰
export QMX_VERBOSE="1"

# åœ¨ tmux ä¸­å¯ç”¨é¼ æ ‡æ»šåŠ¨ï¼ˆå¯é€‰ï¼‰
export QMX_MOUSE="1"
```

---

## âœ… éªŒè¯å®‰è£…

### è¿è¡Œ Doctor å‘½ä»¤

```bash
omq doctor
```

### æµ‹è¯•åŸºæœ¬åŠŸèƒ½

```bash
# å¯åŠ¨ oh-my-qwen
omq --high

# åœ¨ä¼šè¯ä¸­å°è¯•ï¼š
$architect "analyze the current directory"
```

### æ£€æŸ¥ Skills å®‰è£…

```bash
# åˆ—å‡ºå·²å®‰è£…çš„ skills
ls -la ~/.qwen-code/skills/

# æˆ–é¡¹ç›®çº§ skills
ls -la .qwen-code/skills/
```

### éªŒè¯ MCP Servers

```bash
# æ£€æŸ¥ MCP é…ç½®
QMX doctor --team
```

---

## ðŸ”§ æ•…éšœæŽ’é™¤

### é—®é¢˜ï¼š"command not found: omq"

**è§£å†³æ–¹æ¡ˆï¼š**
```bash
# å°† npm å…¨å±€ bin æ·»åŠ åˆ° PATH
export PATH="$HOME/.npm-global/bin:$PATH"

# æˆ–å¯¹äºŽé»˜è®¤ npm ä½ç½®
export PATH="$HOME/.npm/bin:$PATH"

# æ°¸ä¹…æ·»åŠ åˆ° ~/.bashrc æˆ– ~/.zshrc
echo 'export PATH="$HOME/.npm-global/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc
```

### é—®é¢˜ï¼š"npm ERR! code EACCES"

**è§£å†³æ–¹æ¡ˆ (macOS/Linux)ï¼š**
```bash
# ä¿®å¤ npm æƒé™
mkdir ~/.npm-global
npm config set prefix '~/.npm-global'
echo 'export PATH=~/.npm-global/bin:$PATH' >> ~/.bashrc
source ~/.bashrc
```

**è§£å†³æ–¹æ¡ˆ (Windows)ï¼š**
```bash
# ä»¥ç®¡ç†å‘˜èº«ä»½è¿è¡Œå‘½ä»¤æç¤ºç¬¦æˆ– PowerShell
npm install -g oh-my-qwen
```

### é—®é¢˜ï¼š"Qwen Code CLI not found"

**è§£å†³æ–¹æ¡ˆï¼š**
```bash
# é‡æ–°å®‰è£… Qwen Code CLI
npm uninstall -g @anthropic/qwen-code
npm install -g @anthropic/qwen-code

# éªŒè¯
qwen-code --version
```

### é—®é¢˜ï¼š"Node.js version too old"

**è§£å†³æ–¹æ¡ˆï¼š**
```bash
# å®‰è£… nvm (Node Version Manager)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash

# å®‰è£… Node.js 20
nvm install 20
nvm use 20
nvm alias default 20

# éªŒè¯
node --version  # åº”è¯¥æ˜¾ç¤º v20.x.x
```

### é—®é¢˜ï¼štmux not found (å›¢é˜Ÿæ¨¡å¼)

**macOSï¼š**
```bash
brew install tmux
```

**Ubuntu/Debianï¼š**
```bash
sudo apt install tmux
```

**Fedoraï¼š**
```bash
sudo dnf install tmux
```

**Windowsï¼š**
```bash
winget install psmux
```

---

## ðŸ–¥ï¸ å¹³å°ç‰¹å®šæŒ‡å—

### macOS

```bash
# å®‰è£…å…ˆå†³æ¡ä»¶
brew install node@20 git tmux

# å®‰è£… Qwen Code å’Œ oh-my-qwen
npm install -g @anthropic/qwen-code oh-my-qwen

# è®¾ç½®
omq setup

# æµ‹è¯•
omq --high
```

### Windows

```bash
# ä»Ž https://nodejs.org å®‰è£… Node.js
# ä»Ž https://git-scm.com å®‰è£… Git

# ä¸ºå›¢é˜Ÿæ¨¡å¼å®‰è£… psmux
winget install psmux

# ä»¥ç®¡ç†å‘˜èº«ä»½å®‰è£… Qwen Code å’Œ oh-my-qwen
npm install -g @anthropic/qwen-code oh-my-qwen

# è®¾ç½®
omq setup

# æµ‹è¯•
omq --high
```

### WSL2 (Windows Linux å­ç³»ç»Ÿ)

```bash
# åœ¨ WSL2 ç»ˆç«¯ä¸­
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -
sudo apt-get install -y nodejs git tmux

# å…¨å±€å®‰è£…
npm install -g @anthropic/qwen-code oh-my-qwen

# è®¾ç½®
omq setup

# æµ‹è¯•
omq --high
```

### Linux (Ubuntu/Debian)

```bash
# å®‰è£…å…ˆå†³æ¡ä»¶
sudo apt update
sudo apt install -y nodejs npm git tmux

# å®‰è£… Qwen Code å’Œ oh-my-qwen
npm install -g @anthropic/qwen-code oh-my-qwen

# è®¾ç½®
omq setup

# æµ‹è¯•
omq --high
```

### Linux (Fedora/RHEL)

```bash
# å®‰è£…å…ˆå†³æ¡ä»¶
sudo dnf install -y nodejs git tmux

# å®‰è£… Qwen Code å’Œ oh-my-qwen
npm install -g @anthropic/qwen-code oh-my-qwen

# è®¾ç½®
omq setup

# æµ‹è¯•
omq --high
```

---

## ðŸŽ¯ å®‰è£…åŽè®¾ç½®

### 1. åˆ›å»ºç¬¬ä¸€ä¸ªé¡¹ç›®

```bash
# åˆ›å»ºæ–°é¡¹ç›®ç›®å½•
mkdir my-qwen-project
cd my-qwen-project

# åˆå§‹åŒ– oh-my-qwen
omq setup

# åˆ›å»º AGENTS.md
cat > AGENTS.md << 'EOF'
# Project Agents

æœ¬é¡¹ç›®ä½¿ç”¨ oh-my-qwen è¿›è¡Œå·¥ä½œæµç¼–æŽ’ã€‚

## å¯ç”¨ Skills
- `$architect` - æž¶æž„åˆ†æž
- `$executor` - ä»£ç å®žçŽ°
- `$plan` - è§„åˆ’
- `$ralph` - æŒç»­æ‰§è¡Œ

## State ç›®å½•
- `.QMX/` - è¿è¡Œæ—¶ stateã€plansã€logs
EOF
```

### 2. æµ‹è¯• Workflows

```bash
# å¯åŠ¨ oh-my-qwen
omq --high

# åœ¨ä¼šè¯ä¸­å°è¯• workflowsï¼š
$architect "analyze this project structure"
$plan "create a REST API with user authentication"
```

### 3. é…ç½®ç¼–è¾‘å™¨

#### VS Code

å®‰è£…æ‰©å±•ï¼š
- Qwen Code (å¦‚æœ‰)
- Markdown All in One
- GitLens

#### JetBrains IDEs

å®‰è£…æ’ä»¶ï¼š
- Qwen Code Assistant
- Markdown support

---

## ðŸ“š å…¶ä»–èµ„æº

### æ–‡æ¡£

- [å…¥é—¨æŒ‡å—](./docs/getting-started.html)
- [Skills å‚è€ƒ](./docs/skills.html)
- [Agent ç›®å½•](./docs/agents.html)
- [OpenCode & Cline é›†æˆ](./INSTALL-OPENCODE-CLINE.md)

### ç¤¾åŒº

- [GitHub Issues](https://github.com/your-username/oh-my-qwen/issues)
- [Discord ç¤¾åŒº](https://discord.gg/your-invite)
- [Discussions](https://github.com/your-username/oh-my-qwen/discussions)

### æ•™ç¨‹

- [å¿«é€Ÿå…¥é—¨æŒ‡å—](./DEMO.md)
- [ä»Ž oh-my-codex è¿ç§»](./MIGRATION_TO_QWEN.md)
- [å›¢é˜Ÿæ¨¡å¼æŒ‡å—](./docs/team-mode.html)

---

## ðŸ†˜ èŽ·å–å¸®åŠ©

### å¸¸ç”¨å‘½ä»¤

```bash
# æ˜¾ç¤ºå¸®åŠ©
omq --help

# æ˜¾ç¤ºç‰ˆæœ¬
omq version

# æ£€æŸ¥å®‰è£…
omq doctor

# è®¾ç½® skills
omq setup

# ä½¿ç”¨é«˜æŽ¨ç†å¯åŠ¨
omq --high

# ä½¿ç”¨ madmax æ¨¡å¼å¯åŠ¨
omq --madmax

# æ˜¾ç¤ºæ´»åŠ¨ modes
omq status

# å–æ¶ˆæ´»åŠ¨ modes
omq cancel
```

### æ”¯æŒæ¸ é“

1. **GitHub Issues**: æŠ¥å‘Šé”™è¯¯å’ŒåŠŸèƒ½è¯·æ±‚
2. **Discussions**: æé—®å’Œåˆ†äº«æƒ³æ³•
3. **Discord**: ä¸Žç¤¾åŒºå®žæ—¶èŠå¤©
4. **Documentation**: å…ˆæŸ¥çœ‹æ–‡æ¡£

---

## ðŸŽ‰ åŽç»­æ­¥éª¤

å®‰è£…æˆåŠŸåŽï¼š

1. âœ… é˜…è¯» [å…¥é—¨æŒ‡å—](./docs/getting-started.html)
2. âœ… å°è¯•ç¬¬ä¸€ä¸ªå·¥ä½œæµï¼š`$plan "..."`
3. âœ… æŽ¢ç´¢å¯ç”¨ skillsï¼š`/skills`
4. âœ… åŠ å…¥ Discord ç¤¾åŒº
5. âœ… åœ¨ GitHub ä¸Š star ä»“åº“ â­

**ä½¿ç”¨ oh-my-qwen å¿«ä¹ç¼–ç ï¼ðŸš€**

