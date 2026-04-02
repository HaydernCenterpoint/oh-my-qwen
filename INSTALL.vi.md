# Hướng Dẫn Cài Đặt

Hướng dẫn cài đặt đầy đủ cho oh-my-qwen (OMQ) - Lớp điều phối multi-agent cho Qwen Code CLI.

---

## 📋 Mục Lục

- [Yêu Cầu Hệ Thống](#yêu-cầu-hệ-thống)
- [Cài Đặt Nhanh](#cài-đặt-nhanh)
- [Cài Đặt Từng Bước](#cài-đặt-từng-bước)
- [Cấu Hình](#cấu-hình)
- [Kiểm Tra Cài Đặt](#kiểm-tra-cài-đặt)
- [Xử Lý Sự Cố](#xử-lý-sự-cố)
- [Hướng Dẫn Theo Nền Tảng](#hướng-dẫn-theo-nền-tảng)

---

## 🚀 Yêu Cầu Hệ Thống

Trước khi cài đặt oh-my-qwen, đảm bảo bạn có:

| Yêu Cầu | Phiên Bản | Dùng Cho |
|---------|-----------|----------|
| **Node.js** | 20.x trở lên | Runtime chính |
| **npm** | 9.x trở lên | Quản lý package |
| **Qwen Code CLI** | Mới nhất | Thực thi AI agent |
| **Git** | Bất kỳ phiên bản gần đây | Quản lý version |
| **tmux** | 3.0+ (macOS/Linux) | Team mode |
| **psmux** | Mới nhất (Windows) | Team mode trên Windows |

### Kiểm Tra Hệ Thống

```bash
# Kiểm tra phiên bản Node.js
node --version  # Nên là v20.x hoặc cao hơn

# Kiểm tra phiên bản npm
npm --version   # Nên là 9.x hoặc cao hơn

# Kiểm tra Qwen Code đã cài chưa
qwen-code --version

# Kiểm tra Git
git --version
```

---

## ⚡ Cài Đặt Nhanh

Dành cho người dùng có kinh nghiệm muốn bắt đầu ngay:

```bash
# 1. Cài đặt Qwen Code CLI và oh-my-qwen
npm install -g @anthropic/qwen-code oh-my-qwen

# 2. Cài đặt skills và workflows
omq setup

# 3. Khởi động với cài đặt khuyến nghị
omq --high

# 4. Bắt đầu sử dụng workflow keywords
# Trong phiên Qwen Code:
$architect "analyze this codebase"
$plan "create implementation plan"
```

---

## 📦 Cài Đặt Từng Bước

### Bước 1: Cài đặt Node.js

#### macOS
```bash
# Sử dụng Homebrew
brew install node@20

# Hoặc tải từ https://nodejs.org
```

#### Windows
```bash
# Tải installer từ https://nodejs.org
# Chạy installer và làm theo hướng dẫn
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

### Bước 2: Cài đặt Qwen Code CLI

```bash
# Cài đặt global
npm install -g @anthropic/qwen-code

# Kiểm tra cài đặt
qwen-code --version
```

### Bước 3: Cấu hình API Key Qwen Code

```bash
# Chạy Qwen Code setup
qwen-code login

# Hoặc đặt biến môi trường
export QWEN_API_KEY="your-api-key-here"

# Để cài đặt vĩnh viễn, thêm vào ~/.bashrc hoặc ~/.zshrc
echo 'export QWEN_API_KEY="your-api-key-here"' >> ~/.bashrc
source ~/.bashrc
```

### Bước 4: Cài đặt oh-my-qwen

```bash
# Cài đặt global
npm install -g oh-my-qwen

# Kiểm tra cài đặt
omq --version
```

### Bước 5: Cài đặt Skills và Workflows

```bash
# Khởi tạo oh-my-qwen trong project của bạn
omq setup

# Sẽ thực hiện:
# - Tạo thư mục .qwen-code/ với config
# - Cài đặt skills và prompts
# - Setup AGENTS.md
# - Cấu hình MCP servers
```

### Bước 6: Kiểm tra cài đặt

```bash
# Chạy lệnh doctor
omq doctor

# Kết quả mong đợi:
# ✅ oh-my-qwen đã cài đặt
# ✅ Qwen Code CLI đã cài đặt
# ✅ Skills đã cài đặt
# ✅ Cấu hình hợp lệ
```

---

## ⚙️ Cấu Hình

### Cấu Hình Cơ Bản

Tạo hoặc chỉnh sửa `~/.qwen-code/config.toml`:

```toml
# Cấu hình model
model = "qwen-max"

# Reasoning effort (low, medium, high, xhigh)
model_reasoning_effort = "high"

# Cấu hình TUI
[tui]
theme = "dark"
```

### Cấu hình oh-my-qwen

Tạo `.omx-config.json` trong thư mục gốc project:

```json
{
  "env": {
    "OMX_DEFAULT_FRONTIER_MODEL": "qwen-max",
    "OMX_DEFAULT_STANDARD_MODEL": "qwen-plus",
    "OMX_DEFAULT_SPARK_MODEL": "qwen-turbo"
  },
  "models": {
    "default": "qwen-max",
    "team": "qwen-plus"
  }
}
```

### Biến Môi Trường

Thêm vào `~/.bashrc`, `~/.zshrc`, hoặc `~/.profile`:

```bash
# Qwen Code API Key
export QWEN_API_KEY="your-api-key"

# Thư mục home của oh-my-qwen (tùy chọn)
export QWEN_CODE_HOME="$HOME/.qwen-code"

# Bật logging chi tiết (tùy chọn)
export OMX_VERBOSE="1"

# Bật cuộn chuột trong tmux (tùy chọn)
export OMX_MOUSE="1"
```

---

## ✅ Kiểm Tra Cài Đặt

### Chạy Lệnh Doctor

```bash
omq doctor
```

### Kiểm Tra Chức Năng Cơ Bản

```bash
# Khởi động oh-my-qwen
omq --high

# Trong phiên, thử:
$architect "analyze the current directory"
```

### Kiểm Tra Cài Đặt Skills

```bash
# Liệt kê skills đã cài
ls -la ~/.qwen-code/skills/

# Hoặc skills cấp project
ls -la .qwen-code/skills/
```

### Xác Minh MCP Servers

```bash
# Kiểm tra cấu hình MCP
omx doctor --team
```

---

## 🔧 Xử Lý Sự Cố

### Vấn đề: "command not found: omq"

**Giải pháp:**
```bash
# Thêm npm global bin vào PATH
export PATH="$HOME/.npm-global/bin:$PATH"

# Hoặc cho vị trí npm mặc định
export PATH="$HOME/.npm/bin:$PATH"

# Thêm vào ~/.bashrc hoặc ~/.zshrc để vĩnh viễn
echo 'export PATH="$HOME/.npm-global/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc
```

### Vấn đề: "npm ERR! code EACCES"

**Giải pháp (macOS/Linux):**
```bash
# Sửa quyền npm
mkdir ~/.npm-global
npm config set prefix '~/.npm-global'
echo 'export PATH=~/.npm-global/bin:$PATH' >> ~/.bashrc
source ~/.bashrc
```

**Giải pháp (Windows):**
```bash
# Chạy Command Prompt hoặc PowerShell với quyền Administrator
npm install -g oh-my-qwen
```

### Vấn đề: "Qwen Code CLI not found"

**Giải pháp:**
```bash
# Cài đặt lại Qwen Code CLI
npm uninstall -g @anthropic/qwen-code
npm install -g @anthropic/qwen-code

# Kiểm tra
qwen-code --version
```

### Vấn đề: "Node.js version too old"

**Giải pháp:**
```bash
# Cài đặt nvm (Node Version Manager)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash

# Cài đặt Node.js 20
nvm install 20
nvm use 20
nvm alias default 20

# Kiểm tra
node --version  # Nên hiện v20.x.x
```

### Vấn đề: tmux not found (cho team mode)

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

## 🖥️ Hướng Dẫn Theo Nền Tảng

### macOS

```bash
# Cài đặt prerequisites
brew install node@20 git tmux

# Cài đặt Qwen Code và oh-my-qwen
npm install -g @anthropic/qwen-code oh-my-qwen

# Setup
omq setup

# Test
omq --high
```

### Windows

```bash
# Cài đặt Node.js từ https://nodejs.org
# Cài đặt Git từ https://git-scm.com

# Cài đặt psmux cho team mode
winget install psmux

# Cài đặt Qwen Code và oh-my-qwen (với quyền Administrator)
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

# Cài đặt global
npm install -g @anthropic/qwen-code oh-my-qwen

# Setup
omq setup

# Test
omq --high
```

### Linux (Ubuntu/Debian)

```bash
# Cài đặt prerequisites
sudo apt update
sudo apt install -y nodejs npm git tmux

# Cài đặt Qwen Code và oh-my-qwen
npm install -g @anthropic/qwen-code oh-my-qwen

# Setup
omq setup

# Test
omq --high
```

### Linux (Fedora/RHEL)

```bash
# Cài đặt prerequisites
sudo dnf install -y nodejs git tmux

# Cài đặt Qwen Code và oh-my-qwen
npm install -g @anthropic/qwen-code oh-my-qwen

# Setup
omq setup

# Test
omq --high
```

---

## 🎯 Cài Đặt Sau Khi Hoàn Tất

### 1. Tạo Project Đầu Tiên

```bash
# Tạo thư mục project mới
mkdir my-qwen-project
cd my-qwen-project

# Khởi tạo oh-my-qwen
omq setup

# Tạo AGENTS.md
cat > AGENTS.md << 'EOF'
# Project Agents

Dự án này sử dụng oh-my-qwen cho điều phối workflow.

## Skills Có Sẵn
- `$architect` - Phân tích kiến trúc
- `$executor` - Thực thi code
- `$plan` - Lập kế hoạch
- `$ralph` - Thực thi liên tục

## Thư mục State
- `.omx/` - Runtime state, plans, logs
EOF
```

### 2. Test Workflows

```bash
# Khởi động oh-my-qwen
omq --high

# Thử workflows trong phiên:
$architect "analyze this project structure"
$plan "create a REST API with user authentication"
```

### 3. Cấu Hình Editor

#### VS Code

Cài extensions:
- Qwen Code (nếu có)
- Markdown All in One
- GitLens

#### JetBrains IDEs

Cài plugins:
- Qwen Code Assistant
- Markdown support

---

## 📚 Tài Nguyên Bổ Sung

### Tài Liệu

- [Bắt Đầu](./docs/getting-started.html)
- [Skills Reference](./docs/skills.html)
- [Agent Catalog](./docs/agents.html)
- [Tích Hợp OpenCode & Cline](./INSTALL-OPENCODE-CLINE.md)

### Cộng Đồng

- [GitHub Issues](https://github.com/your-username/oh-my-qwen/issues)
- [Discord Community](https://discord.gg/your-invite)
- [Discussions](https://github.com/your-username/oh-my-qwen/discussions)

### Hướng Dẫn

- [Quick Start Guide](./DEMO.md)
- [Migration từ oh-my-codex](./MIGRATION_TO_QWEN.md)
- [Team Mode Guide](./docs/team-mode.html)

---

## 🆘 Trợ Giúp

### Lệnh Thường Dùng

```bash
# Hiện trợ giúp
omq --help

# Hiện phiên bản
omq version

# Kiểm tra cài đặt
omq doctor

# Cài đặt skills
omq setup

# Khởi động với high reasoning
omq --high

# Khởi động với madmax mode
omq --madmax

# Hiện active modes
omq status

# Hủy active modes
omq cancel
```

### Kênh Hỗ Trợ

1. **GitHub Issues**: Báo lỗi và yêu cầu tính năng
2. **Discussions**: Đặt câu hỏi và chia sẻ ý tưởng
3. **Discord**: Chat real-time với cộng đồng
4. **Documentation**: Đọc docs trước

---

## 🎉 Bước Tiếp Theo

Sau khi cài đặt thành công:

1. ✅ Đọc [Hướng Dẫn Bắt Đầu](./docs/getting-started.html)
2. ✅ Thử workflow đầu tiên: `$plan "..."`
3. ✅ Khám phá skills: `/skills`
4. ✅ Tham gia cộng đồng Discord
5. ✅ Star repository trên GitHub ⭐

**Chúc coding vui vẻ với oh-my-qwen! 🚀**
