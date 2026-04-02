# 安装指南

oh-my-qwen (OMQ) 完整安装指南 - Qwen Code CLI 的多智能体编排层。

---

## 📋 目录

- [系统要求](#系统要求)
- [快速安装](#快速安装)
- [分步安装](#分步安装)
- [配置](#配置)
- [验证安装](#验证安装)
- [故障排除](#故障排除)
- [平台特定指南](#平台特定指南)

---

## 🚀 系统要求

安装 oh-my-qwen 之前，请确保您拥有：

| 要求 | 版本 | 用途 |
|------|------|------|
| **Node.js** | 20.x 或更高 | 核心运行时 |
| **npm** | 9.x 或更高 | 包管理 |
| **Qwen Code CLI** | 最新版 | AI 代理执行 |
| **Git** | 任何近期版本 | 版本控制 |
| **tmux** | 3.0+ (macOS/Linux) | 团队模式 |
| **psmux** | 最新版 (Windows) | Windows 团队模式 |

### 检查系统

```bash
# 检查 Node.js 版本
node --version  # 应该是 v20.x 或更高

# 检查 npm 版本
npm --version   # 应该是 9.x 或更高

# 检查 Qwen Code 是否已安装
qwen-code --version

# 检查 Git
git --version
```

---

## ⚡ 快速安装

适用于想要立即开始使用的有经验用户：

```bash
# 1. 全局安装 Qwen Code CLI 和 oh-my-qwen
npm install -g @anthropic/qwen-code oh-my-qwen

# 2. 设置 skills 和 workflows
omq setup

# 3. 使用推荐设置启动
omq --high

# 4. 开始使用 workflow 关键字
# 在 Qwen Code 会话中：
$architect "analyze this codebase"
$plan "create implementation plan"
```

---

## 📦 分步安装

### 步骤 1: 安装 Node.js

#### macOS
```bash
# 使用 Homebrew
brew install node@20

# 或从 https://nodejs.org 下载
```

#### Windows
```bash
# 从 https://nodejs.org 下载安装程序
# 运行安装程序并按照提示操作
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

### 步骤 2: 安装 Qwen Code CLI

```bash
# 全局安装
npm install -g @anthropic/qwen-code

# 验证安装
qwen-code --version
```

### 步骤 3: 配置 Qwen Code API 密钥

```bash
# 运行 Qwen Code 设置
qwen-code login

# 或设置环境变量
export QWEN_API_KEY="your-api-key-here"

# 永久设置，添加到 ~/.bashrc 或 ~/.zshrc
echo 'export QWEN_API_KEY="your-api-key-here"' >> ~/.bashrc
source ~/.bashrc
```

### 步骤 4: 安装 oh-my-qwen

```bash
# 全局安装
npm install -g oh-my-qwen

# 验证安装
omq --version
```

### 步骤 5: 设置 Skills 和 Workflows

```bash
# 在项目中初始化 oh-my-qwen
omq setup

# 这将：
# - 创建带有配置的 .qwen-code/ 目录
# - 安装 skills 和 prompts
# - 设置 AGENTS.md
# - 配置 MCP servers
```

### 步骤 6: 验证安装

```bash
# 运行 doctor 命令
omq doctor

# 预期输出：
# ✅ oh-my-qwen 已安装
# ✅ Qwen Code CLI 已安装
# ✅ skills 已安装
# ✅ 配置有效
```

---

## ⚙️ 配置

### 基本配置

创建或编辑 `~/.qwen-code/config.toml`：

```toml
# 模型配置
model = "qwen-max"

# 推理努力程度 (low, medium, high, xhigh)
model_reasoning_effort = "high"

# TUI 配置
[tui]
theme = "dark"
```

### oh-my-qwen 配置

在项目根目录创建 `.omx-config.json`：

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

### 环境变量

添加到 `~/.bashrc`、`~/.zshrc` 或 `~/.profile`：

```bash
# Qwen Code API 密钥
export QWEN_API_KEY="your-api-key"

# oh-my-qwen 主目录（可选）
export QWEN_CODE_HOME="$HOME/.qwen-code"

# 启用详细日志（可选）
export OMX_VERBOSE="1"

# 在 tmux 中启用鼠标滚动（可选）
export OMX_MOUSE="1"
```

---

## ✅ 验证安装

### 运行 Doctor 命令

```bash
omq doctor
```

### 测试基本功能

```bash
# 启动 oh-my-qwen
omq --high

# 在会话中尝试：
$architect "analyze the current directory"
```

### 检查 Skills 安装

```bash
# 列出已安装的 skills
ls -la ~/.qwen-code/skills/

# 或项目级 skills
ls -la .qwen-code/skills/
```

### 验证 MCP Servers

```bash
# 检查 MCP 配置
omx doctor --team
```

---

## 🔧 故障排除

### 问题："command not found: omq"

**解决方案：**
```bash
# 将 npm 全局 bin 添加到 PATH
export PATH="$HOME/.npm-global/bin:$PATH"

# 或对于默认 npm 位置
export PATH="$HOME/.npm/bin:$PATH"

# 永久添加到 ~/.bashrc 或 ~/.zshrc
echo 'export PATH="$HOME/.npm-global/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc
```

### 问题："npm ERR! code EACCES"

**解决方案 (macOS/Linux)：**
```bash
# 修复 npm 权限
mkdir ~/.npm-global
npm config set prefix '~/.npm-global'
echo 'export PATH=~/.npm-global/bin:$PATH' >> ~/.bashrc
source ~/.bashrc
```

**解决方案 (Windows)：**
```bash
# 以管理员身份运行命令提示符或 PowerShell
npm install -g oh-my-qwen
```

### 问题："Qwen Code CLI not found"

**解决方案：**
```bash
# 重新安装 Qwen Code CLI
npm uninstall -g @anthropic/qwen-code
npm install -g @anthropic/qwen-code

# 验证
qwen-code --version
```

### 问题："Node.js version too old"

**解决方案：**
```bash
# 安装 nvm (Node Version Manager)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash

# 安装 Node.js 20
nvm install 20
nvm use 20
nvm alias default 20

# 验证
node --version  # 应该显示 v20.x.x
```

### 问题：tmux not found (团队模式)

**macOS：**
```bash
brew install tmux
```

**Ubuntu/Debian：**
```bash
sudo apt install tmux
```

**Fedora：**
```bash
sudo dnf install tmux
```

**Windows：**
```bash
winget install psmux
```

---

## 🖥️ 平台特定指南

### macOS

```bash
# 安装先决条件
brew install node@20 git tmux

# 安装 Qwen Code 和 oh-my-qwen
npm install -g @anthropic/qwen-code oh-my-qwen

# 设置
omq setup

# 测试
omq --high
```

### Windows

```bash
# 从 https://nodejs.org 安装 Node.js
# 从 https://git-scm.com 安装 Git

# 为团队模式安装 psmux
winget install psmux

# 以管理员身份安装 Qwen Code 和 oh-my-qwen
npm install -g @anthropic/qwen-code oh-my-qwen

# 设置
omq setup

# 测试
omq --high
```

### WSL2 (Windows Linux 子系统)

```bash
# 在 WSL2 终端中
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -
sudo apt-get install -y nodejs git tmux

# 全局安装
npm install -g @anthropic/qwen-code oh-my-qwen

# 设置
omq setup

# 测试
omq --high
```

### Linux (Ubuntu/Debian)

```bash
# 安装先决条件
sudo apt update
sudo apt install -y nodejs npm git tmux

# 安装 Qwen Code 和 oh-my-qwen
npm install -g @anthropic/qwen-code oh-my-qwen

# 设置
omq setup

# 测试
omq --high
```

### Linux (Fedora/RHEL)

```bash
# 安装先决条件
sudo dnf install -y nodejs git tmux

# 安装 Qwen Code 和 oh-my-qwen
npm install -g @anthropic/qwen-code oh-my-qwen

# 设置
omq setup

# 测试
omq --high
```

---

## 🎯 安装后设置

### 1. 创建第一个项目

```bash
# 创建新项目目录
mkdir my-qwen-project
cd my-qwen-project

# 初始化 oh-my-qwen
omq setup

# 创建 AGENTS.md
cat > AGENTS.md << 'EOF'
# Project Agents

本项目使用 oh-my-qwen 进行工作流编排。

## 可用 Skills
- `$architect` - 架构分析
- `$executor` - 代码实现
- `$plan` - 规划
- `$ralph` - 持续执行

## State 目录
- `.omx/` - 运行时 state、plans、logs
EOF
```

### 2. 测试 Workflows

```bash
# 启动 oh-my-qwen
omq --high

# 在会话中尝试 workflows：
$architect "analyze this project structure"
$plan "create a REST API with user authentication"
```

### 3. 配置编辑器

#### VS Code

安装扩展：
- Qwen Code (如有)
- Markdown All in One
- GitLens

#### JetBrains IDEs

安装插件：
- Qwen Code Assistant
- Markdown support

---

## 📚 其他资源

### 文档

- [入门指南](./docs/getting-started.html)
- [Skills 参考](./docs/skills.html)
- [Agent 目录](./docs/agents.html)
- [OpenCode & Cline 集成](./INSTALL-OPENCODE-CLINE.md)

### 社区

- [GitHub Issues](https://github.com/your-username/oh-my-qwen/issues)
- [Discord 社区](https://discord.gg/your-invite)
- [Discussions](https://github.com/your-username/oh-my-qwen/discussions)

### 教程

- [快速入门指南](./DEMO.md)
- [从 oh-my-codex 迁移](./MIGRATION_TO_QWEN.md)
- [团队模式指南](./docs/team-mode.html)

---

## 🆘 获取帮助

### 常用命令

```bash
# 显示帮助
omq --help

# 显示版本
omq version

# 检查安装
omq doctor

# 设置 skills
omq setup

# 使用高推理启动
omq --high

# 使用 madmax 模式启动
omq --madmax

# 显示活动 modes
omq status

# 取消活动 modes
omq cancel
```

### 支持渠道

1. **GitHub Issues**: 报告错误和功能请求
2. **Discussions**: 提问和分享想法
3. **Discord**: 与社区实时聊天
4. **Documentation**: 先查看文档

---

## 🎉 后续步骤

安装成功后：

1. ✅ 阅读 [入门指南](./docs/getting-started.html)
2. ✅ 尝试第一个工作流：`$plan "..."`
3. ✅ 探索可用 skills：`/skills`
4. ✅ 加入 Discord 社区
5. ✅ 在 GitHub 上 star 仓库 ⭐

**使用 oh-my-qwen 快乐编码！🚀**
