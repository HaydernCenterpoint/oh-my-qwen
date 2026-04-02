# HÆ°á»›ng Dáº«n CÃ i Äáº·t

HÆ°á»›ng dáº«n cÃ i Ä‘áº·t Ä‘áº§y Ä‘á»§ cho oh-my-qwen (OMQ) - Lá»›p Ä‘iá»u phá»‘i multi-agent cho Qwen Code CLI.

---

## ðŸ“‹ Má»¥c Lá»¥c

- [YÃªu Cáº§u Há»‡ Thá»‘ng](#yÃªu-cáº§u-há»‡-thá»‘ng)
- [CÃ i Äáº·t Nhanh](#cÃ i-Ä‘áº·t-nhanh)
- [CÃ i Äáº·t Tá»«ng BÆ°á»›c](#cÃ i-Ä‘áº·t-tá»«ng-bÆ°á»›c)
- [Cáº¥u HÃ¬nh](#cáº¥u-hÃ¬nh)
- [Kiá»ƒm Tra CÃ i Äáº·t](#kiá»ƒm-tra-cÃ i-Ä‘áº·t)
- [Xá»­ LÃ½ Sá»± Cá»‘](#xá»­-lÃ½-sá»±-cá»‘)
- [HÆ°á»›ng Dáº«n Theo Ná»n Táº£ng](#hÆ°á»›ng-dáº«n-theo-ná»n-táº£ng)

---

## ðŸš€ YÃªu Cáº§u Há»‡ Thá»‘ng

TrÆ°á»›c khi cÃ i Ä‘áº·t oh-my-qwen, Ä‘áº£m báº£o báº¡n cÃ³:

| YÃªu Cáº§u | PhiÃªn Báº£n | DÃ¹ng Cho |
|---------|-----------|----------|
| **Node.js** | 20.x trá»Ÿ lÃªn | Runtime chÃ­nh |
| **npm** | 9.x trá»Ÿ lÃªn | Quáº£n lÃ½ package |
| **Qwen Code CLI** | Má»›i nháº¥t | Thá»±c thi AI agent |
| **Git** | Báº¥t ká»³ phiÃªn báº£n gáº§n Ä‘Ã¢y | Quáº£n lÃ½ version |
| **tmux** | 3.0+ (macOS/Linux) | Team mode |
| **psmux** | Má»›i nháº¥t (Windows) | Team mode trÃªn Windows |

### Kiá»ƒm Tra Há»‡ Thá»‘ng

```bash
# Kiá»ƒm tra phiÃªn báº£n Node.js
node --version  # NÃªn lÃ  v20.x hoáº·c cao hÆ¡n

# Kiá»ƒm tra phiÃªn báº£n npm
npm --version   # NÃªn lÃ  9.x hoáº·c cao hÆ¡n

# Kiá»ƒm tra Qwen Code Ä‘Ã£ cÃ i chÆ°a
qwen-code --version

# Kiá»ƒm tra Git
git --version
```

---

## âš¡ CÃ i Äáº·t Nhanh

DÃ nh cho ngÆ°á»i dÃ¹ng cÃ³ kinh nghiá»‡m muá»‘n báº¯t Ä‘áº§u ngay:

```bash
# 1. CÃ i Ä‘áº·t Qwen Code CLI vÃ  oh-my-qwen
npm install -g @anthropic/qwen-code oh-my-qwen

# 2. CÃ i Ä‘áº·t skills vÃ  workflows
omq setup

# 3. Khá»Ÿi Ä‘á»™ng vá»›i cÃ i Ä‘áº·t khuyáº¿n nghá»‹
omq --high

# 4. Báº¯t Ä‘áº§u sá»­ dá»¥ng workflow keywords
# Trong phiÃªn Qwen Code:
$architect "analyze this codebase"
$plan "create implementation plan"
```

---

## ðŸ“¦ CÃ i Äáº·t Tá»«ng BÆ°á»›c

### BÆ°á»›c 1: CÃ i Ä‘áº·t Node.js

#### macOS
```bash
# Sá»­ dá»¥ng Homebrew
brew install node@20

# Hoáº·c táº£i tá»« https://nodejs.org
```

#### Windows
```bash
# Táº£i installer tá»« https://nodejs.org
# Cháº¡y installer vÃ  lÃ m theo hÆ°á»›ng dáº«n
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

### BÆ°á»›c 2: CÃ i Ä‘áº·t Qwen Code CLI

```bash
# CÃ i Ä‘áº·t global
npm install -g @anthropic/qwen-code

# Kiá»ƒm tra cÃ i Ä‘áº·t
qwen-code --version
```

### BÆ°á»›c 3: Cáº¥u hÃ¬nh API Key Qwen Code

```bash
# Cháº¡y Qwen Code setup
qwen-code login

# Hoáº·c Ä‘áº·t biáº¿n mÃ´i trÆ°á»ng
export QWEN_API_KEY="your-api-key-here"

# Äá»ƒ cÃ i Ä‘áº·t vÄ©nh viá»…n, thÃªm vÃ o ~/.bashrc hoáº·c ~/.zshrc
echo 'export QWEN_API_KEY="your-api-key-here"' >> ~/.bashrc
source ~/.bashrc
```

### BÆ°á»›c 4: CÃ i Ä‘áº·t oh-my-qwen

```bash
# CÃ i Ä‘áº·t global
npm install -g oh-my-qwen

# Kiá»ƒm tra cÃ i Ä‘áº·t
omq --version
```

### BÆ°á»›c 5: CÃ i Ä‘áº·t Skills vÃ  Workflows

```bash
# Khá»Ÿi táº¡o oh-my-qwen trong project cá»§a báº¡n
omq setup

# Sáº½ thá»±c hiá»‡n:
# - Táº¡o thÆ° má»¥c .qwen-code/ vá»›i config
# - CÃ i Ä‘áº·t skills vÃ  prompts
# - Setup AGENTS.md
# - Cáº¥u hÃ¬nh MCP servers
```

### BÆ°á»›c 6: Kiá»ƒm tra cÃ i Ä‘áº·t

```bash
# Cháº¡y lá»‡nh doctor
omq doctor

# Káº¿t quáº£ mong Ä‘á»£i:
# âœ… oh-my-qwen Ä‘Ã£ cÃ i Ä‘áº·t
# âœ… Qwen Code CLI Ä‘Ã£ cÃ i Ä‘áº·t
# âœ… Skills Ä‘Ã£ cÃ i Ä‘áº·t
# âœ… Cáº¥u hÃ¬nh há»£p lá»‡
```

---

## âš™ï¸ Cáº¥u HÃ¬nh

### Cáº¥u HÃ¬nh CÆ¡ Báº£n

Táº¡o hoáº·c chá»‰nh sá»­a `~/.qwen-code/config.toml`:

```toml
# Cáº¥u hÃ¬nh model
model = "qwen-max"

# Reasoning effort (low, medium, high, xhigh)
model_reasoning_effort = "high"

# Cáº¥u hÃ¬nh TUI
[tui]
theme = "dark"
```

### Cáº¥u hÃ¬nh oh-my-qwen

Táº¡o `.QMX-config.json` trong thÆ° má»¥c gá»‘c project:

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

### Biáº¿n MÃ´i TrÆ°á»ng

ThÃªm vÃ o `~/.bashrc`, `~/.zshrc`, hoáº·c `~/.profile`:

```bash
# Qwen Code API Key
export QWEN_API_KEY="your-api-key"

# ThÆ° má»¥c home cá»§a oh-my-qwen (tÃ¹y chá»n)
export QWEN_CODE_HOME="$HOME/.qwen-code"

# Báº­t logging chi tiáº¿t (tÃ¹y chá»n)
export QMX_VERBOSE="1"

# Báº­t cuá»™n chuá»™t trong tmux (tÃ¹y chá»n)
export QMX_MOUSE="1"
```

---

## âœ… Kiá»ƒm Tra CÃ i Äáº·t

### Cháº¡y Lá»‡nh Doctor

```bash
omq doctor
```

### Kiá»ƒm Tra Chá»©c NÄƒng CÆ¡ Báº£n

```bash
# Khá»Ÿi Ä‘á»™ng oh-my-qwen
omq --high

# Trong phiÃªn, thá»­:
$architect "analyze the current directory"
```

### Kiá»ƒm Tra CÃ i Äáº·t Skills

```bash
# Liá»‡t kÃª skills Ä‘Ã£ cÃ i
ls -la ~/.qwen-code/skills/

# Hoáº·c skills cáº¥p project
ls -la .qwen-code/skills/
```

### XÃ¡c Minh MCP Servers

```bash
# Kiá»ƒm tra cáº¥u hÃ¬nh MCP
QMX doctor --team
```

---

## ðŸ”§ Xá»­ LÃ½ Sá»± Cá»‘

### Váº¥n Ä‘á»: "command not found: omq"

**Giáº£i phÃ¡p:**
```bash
# ThÃªm npm global bin vÃ o PATH
export PATH="$HOME/.npm-global/bin:$PATH"

# Hoáº·c cho vá»‹ trÃ­ npm máº·c Ä‘á»‹nh
export PATH="$HOME/.npm/bin:$PATH"

# ThÃªm vÃ o ~/.bashrc hoáº·c ~/.zshrc Ä‘á»ƒ vÄ©nh viá»…n
echo 'export PATH="$HOME/.npm-global/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc
```

### Váº¥n Ä‘á»: "npm ERR! code EACCES"

**Giáº£i phÃ¡p (macOS/Linux):**
```bash
# Sá»­a quyá»n npm
mkdir ~/.npm-global
npm config set prefix '~/.npm-global'
echo 'export PATH=~/.npm-global/bin:$PATH' >> ~/.bashrc
source ~/.bashrc
```

**Giáº£i phÃ¡p (Windows):**
```bash
# Cháº¡y Command Prompt hoáº·c PowerShell vá»›i quyá»n Administrator
npm install -g oh-my-qwen
```

### Váº¥n Ä‘á»: "Qwen Code CLI not found"

**Giáº£i phÃ¡p:**
```bash
# CÃ i Ä‘áº·t láº¡i Qwen Code CLI
npm uninstall -g @anthropic/qwen-code
npm install -g @anthropic/qwen-code

# Kiá»ƒm tra
qwen-code --version
```

### Váº¥n Ä‘á»: "Node.js version too old"

**Giáº£i phÃ¡p:**
```bash
# CÃ i Ä‘áº·t nvm (Node Version Manager)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash

# CÃ i Ä‘áº·t Node.js 20
nvm install 20
nvm use 20
nvm alias default 20

# Kiá»ƒm tra
node --version  # NÃªn hiá»‡n v20.x.x
```

### Váº¥n Ä‘á»: tmux not found (cho team mode)

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

## ðŸ–¥ï¸ HÆ°á»›ng Dáº«n Theo Ná»n Táº£ng

### macOS

```bash
# CÃ i Ä‘áº·t prerequisites
brew install node@20 git tmux

# CÃ i Ä‘áº·t Qwen Code vÃ  oh-my-qwen
npm install -g @anthropic/qwen-code oh-my-qwen

# Setup
omq setup

# Test
omq --high
```

### Windows

```bash
# CÃ i Ä‘áº·t Node.js tá»« https://nodejs.org
# CÃ i Ä‘áº·t Git tá»« https://git-scm.com

# CÃ i Ä‘áº·t psmux cho team mode
winget install psmux

# CÃ i Ä‘áº·t Qwen Code vÃ  oh-my-qwen (vá»›i quyá»n Administrator)
npm install -g @anthropic/qwen-code oh-my-qwen

# Setup
omq setup

# Test
omq --high
```

### WSL2 (Windows Subsystem for Linux)

```bash
# Trong terminal WSL2
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -
sudo apt-get install -y nodejs git tmux

# CÃ i Ä‘áº·t global
npm install -g @anthropic/qwen-code oh-my-qwen

# Setup
omq setup

# Test
omq --high
```

### Linux (Ubuntu/Debian)

```bash
# CÃ i Ä‘áº·t prerequisites
sudo apt update
sudo apt install -y nodejs npm git tmux

# CÃ i Ä‘áº·t Qwen Code vÃ  oh-my-qwen
npm install -g @anthropic/qwen-code oh-my-qwen

# Setup
omq setup

# Test
omq --high
```

### Linux (Fedora/RHEL)

```bash
# CÃ i Ä‘áº·t prerequisites
sudo dnf install -y nodejs git tmux

# CÃ i Ä‘áº·t Qwen Code vÃ  oh-my-qwen
npm install -g @anthropic/qwen-code oh-my-qwen

# Setup
omq setup

# Test
omq --high
```

---

## ðŸŽ¯ CÃ i Äáº·t Sau Khi HoÃ n Táº¥t

### 1. Táº¡o Project Äáº§u TiÃªn

```bash
# Táº¡o thÆ° má»¥c project má»›i
mkdir my-qwen-project
cd my-qwen-project

# Khá»Ÿi táº¡o oh-my-qwen
omq setup

# Táº¡o AGENTS.md
cat > AGENTS.md << 'EOF'
# Project Agents

Dá»± Ã¡n nÃ y sá»­ dá»¥ng oh-my-qwen cho Ä‘iá»u phá»‘i workflow.

## Skills CÃ³ Sáºµn
- `$architect` - PhÃ¢n tÃ­ch kiáº¿n trÃºc
- `$executor` - Thá»±c thi code
- `$plan` - Láº­p káº¿ hoáº¡ch
- `$ralph` - Thá»±c thi liÃªn tá»¥c

## ThÆ° má»¥c State
- `.QMX/` - Runtime state, plans, logs
EOF
```

### 2. Test Workflows

```bash
# Khá»Ÿi Ä‘á»™ng oh-my-qwen
omq --high

# Thá»­ workflows trong phiÃªn:
$architect "analyze this project structure"
$plan "create a REST API with user authentication"
```

### 3. Cáº¥u HÃ¬nh Editor

#### VS Code

CÃ i extensions:
- Qwen Code (náº¿u cÃ³)
- Markdown All in One
- GitLens

#### JetBrains IDEs

CÃ i plugins:
- Qwen Code Assistant
- Markdown support

---

## ðŸ“š TÃ i NguyÃªn Bá»• Sung

### TÃ i Liá»‡u

- [Báº¯t Äáº§u](./docs/getting-started.html)
- [Skills Reference](./docs/skills.html)
- [Agent Catalog](./docs/agents.html)
- [TÃ­ch Há»£p OpenCode & Cline](./INSTALL-OPENCODE-CLINE.md)

### Cá»™ng Äá»“ng

- [GitHub Issues](https://github.com/your-username/oh-my-qwen/issues)
- [Discord Community](https://discord.gg/your-invite)
- [Discussions](https://github.com/your-username/oh-my-qwen/discussions)

### HÆ°á»›ng Dáº«n

- [Quick Start Guide](./DEMO.md)
- [Migration tá»« oh-my-codex](./MIGRATION_TO_QWEN.md)
- [Team Mode Guide](./docs/team-mode.html)

---

## ðŸ†˜ Trá»£ GiÃºp

### Lá»‡nh ThÆ°á»ng DÃ¹ng

```bash
# Hiá»‡n trá»£ giÃºp
omq --help

# Hiá»‡n phiÃªn báº£n
omq version

# Kiá»ƒm tra cÃ i Ä‘áº·t
omq doctor

# CÃ i Ä‘áº·t skills
omq setup

# Khá»Ÿi Ä‘á»™ng vá»›i high reasoning
omq --high

# Khá»Ÿi Ä‘á»™ng vá»›i madmax mode
omq --madmax

# Hiá»‡n active modes
omq status

# Há»§y active modes
omq cancel
```

### KÃªnh Há»— Trá»£

1. **GitHub Issues**: BÃ¡o lá»—i vÃ  yÃªu cáº§u tÃ­nh nÄƒng
2. **Discussions**: Äáº·t cÃ¢u há»i vÃ  chia sáº» Ã½ tÆ°á»Ÿng
3. **Discord**: Chat real-time vá»›i cá»™ng Ä‘á»“ng
4. **Documentation**: Äá»c docs trÆ°á»›c

---

## ðŸŽ‰ BÆ°á»›c Tiáº¿p Theo

Sau khi cÃ i Ä‘áº·t thÃ nh cÃ´ng:

1. âœ… Äá»c [HÆ°á»›ng Dáº«n Báº¯t Äáº§u](./docs/getting-started.html)
2. âœ… Thá»­ workflow Ä‘áº§u tiÃªn: `$plan "..."`
3. âœ… KhÃ¡m phÃ¡ skills: `/skills`
4. âœ… Tham gia cá»™ng Ä‘á»“ng Discord
5. âœ… Star repository trÃªn GitHub â­

**ChÃºc coding vui váº» vá»›i oh-my-qwen! ðŸš€**

