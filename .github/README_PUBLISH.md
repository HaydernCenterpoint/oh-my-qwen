# 🚀 Hướng dẫn Public oh-my-qwen lên GitHub

## Checklist trước khi publish

### ✅ 1. Cập nhật thông tin cá nhân

**File cần sửa:**
- `package.json` - Thay đổi `author`, `repository`, `homepage`, `bugs`
- `README.md` - Cập nhật links, badges, author
- `LICENSE` - Thêm tên bạn vào copyright (nếu muốn)

**Ví dụ `package.json`:**
```json
{
  "author": "Your Name <your.email@example.com>",
  "repository": {
    "url": "git+https://github.com/your-username/oh-my-qwen.git"
  },
  "homepage": "https://github.com/your-username/oh-my-qwen",
  "bugs": {
    "url": "https://github.com/your-username/oh-my-qwen/issues"
  }
}
```

---

### ✅ 2. Tạo GitHub Repository

```bash
# 1. Vào GitHub, tạo repository mới
# Tên: oh-my-qwen
# Visibility: Public
# KHÔNG tick vào "Initialize with README"

# 2. Clone về và push code
cd oh-my-qwen
git init
git add .
git commit -m "Initial commit: oh-my-qwen fork for Qwen Code"
git branch -M main
git remote add origin https://github.com/your-username/oh-my-qwen.git
git push -u origin main
```

---

### ✅ 3. Cấu hình .gitignore

Đảm bảo các file nhạy cảm không bị commit:

```gitignore
# Dependencies
node_modules/
dist/

# Build artifacts
*.log
npm-debug.log*

# OS files
.DS_Store
Thumbs.db

# IDE
.vscode/
.idea/
*.swp
*.swo

# Environment
.env
.env.local
.env.*.local

# Qwen Code config (personal)
~/.qwen-code/

# OMQ state (personal runtime data)
.omx/state/
.omx/logs/

# Test coverage
coverage/

# Temporary files
tmp/
temp/
```

---

### ✅ 4. Tạo GitHub Actions (Optional)

**File: `.github/workflows/ci.yml`**
```yaml
name: CI

on:
  push:
    branches: [main]
  pull_request:
    branches: [main]

jobs:
  build:
    runs-on: ubuntu-latest
    
    steps:
    - uses: actions/checkout@v4
    
    - name: Setup Node.js
      uses: actions/setup-node@v4
      with:
        node-version: '20'
        cache: 'npm'
    
    - name: Install dependencies
      run: npm ci
    
    - name: Build
      run: npm run build
    
    - name: Run tests
      run: npm test
    
    - name: Lint
      run: npm run lint
```

---

### ✅ 5. Tạo Release đầu tiên

```bash
# 1. Tag version
git tag -a v1.0.0 -m "Initial release: oh-my-qwen for Qwen Code"
git push origin v1.0.0

# 2. Tạo release trên GitHub
# Vào: https://github.com/your-username/oh-my-qwen/releases
# Click "Draft a new release"
# Chọn tag v1.0.0
# Viết release notes
```

**Release Notes Template:**
```markdown
## 🎉 Initial Release

### Features
- ✅ Full oh-my-codex workflow compatibility
- ✅ Qwen Code CLI integration
- ✅ Multi-agent orchestration
- ✅ Skills and workflows ($plan, $ralph, $team, etc.)
- ✅ Role keywords ($architect, $executor, etc.)
- ✅ State management in .omx/

### Installation
```bash
npm install -g oh-my-qwen
omq setup
omq --high
```

### Acknowledgments
Forked from [oh-my-codex](https://github.com/Yeachan-Heo/oh-my-codex) by Yeachan Heo
```

---

### ✅ 6. Publish lên npm (Optional)

```bash
# 1. Login npm
npm login

# 2. Update version trong package.json
npm version 1.0.0

# 3. Publish
npm publish --access public

# 4. Verify
npm view oh-my-qwen
```

**⚠️ Lưu ý:** Tên `oh-my-qwen` có thể đã được đăng ký. Nếu vậy, chọn tên khác:
- `oh-my-qwen-cli`
- `omq-cli`
- `qwen-orchestrator`

---

### ✅ 7. Tạo Website (Optional)

Sử dụng GitHub Pages:

```bash
# 1. Tạo branch gh-pages
git checkout --orphan gh-pages
git reset --hard

# 2. Copy docs sang
cp -r docs/* .

# 3. Commit và push
git add .
git commit -m "Setup GitHub Pages"
git push origin gh-pages

# 4. Enable Pages trong Settings
# Settings > Pages > Source: gh-pages branch
```

---

### ✅ 8. Badges và Shields

Cập nhật README với các badges:

```markdown
[![npm version](https://img.shields.io/npm/v/oh-my-qwen)](https://www.npmjs.com/package/oh-my-qwen)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Node.js](https://img.shields.io/badge/node-%3E%3D20-brightgreen)](https://nodejs.org)
[![Discord](https://img.shields.io/discord/1452487457085063218?color=5865F2&logo=discord&logoColor=white&label=Discord)](https://discord.gg/your-invite)
[![CI](https://github.com/your-username/oh-my-qwen/actions/workflows/ci.yml/badge.svg)](https://github.com/your-username/oh-my-qwen/actions/workflows/ci.yml)
```

---

### ✅ 9. Social Preview

Tạo ảnh preview cho repository:

1. Thiết kế ảnh 1280x640px
2. Upload vào `.github/social-preview.png`
3. GitHub sẽ tự động dùng làm OG image

---

### ✅ 10. Issue Templates

Tạo `.github/ISSUE_TEMPLATE/bug-report.md`:

```markdown
---
name: Bug Report
about: Create a report to help us improve
title: '[BUG] '
labels: bug
---

**Describe the bug**
A clear and concise description of what the bug is.

**To Reproduce**
Steps to reproduce the behavior:
1. Run `omq ...`
2. See error

**Expected behavior**
A clear and concise description of what you expected to happen.

**Screenshots**
If applicable, add screenshots to help explain your problem.

**Environment:**
- OS: [e.g. macOS, Windows, Linux]
- Node version: [e.g. 20.11.0]
- OMQ version: [e.g. 1.0.0]

**Additional context**
Add any other context about the problem here.
```

---

## 📝 Scripts hữu ích

### Setup script

Tạo `scripts/setup-github.sh`:

```bash
#!/bin/bash

echo "🚀 Setting up oh-my-qwen for GitHub..."

# Remove sensitive files
rm -rf node_modules dist .env

# Initialize git
git init
git add .
git commit -m "Initial commit"

# Add remote (replace with your repo)
git remote add origin https://github.com/YOUR_USERNAME/oh-my-qwen.git

# Push to main
git branch -M main
git push -u origin main

echo "✅ Done! Repository is ready."
echo "Next: Create release, publish to npm, setup CI/CD"
```

---

## 🎯 Checklist tổng hợp

- [ ] Cập nhật `package.json` với thông tin của bạn
- [ ] Cập nhật `README.md` với links mới
- [ ] Tạo `.gitignore` đầy đủ
- [ ] Tạo GitHub repository
- [ ] Push code lên GitHub
- [ ] Setup GitHub Actions (CI/CD)
- [ ] Tạo release đầu tiên (v1.0.0)
- [ ] Publish lên npm (nếu muốn)
- [ ] Tạo website/docs (optional)
- [ ] Thêm badges vào README
- [ ] Tạo issue templates
- [ ] Setup Discord/community links
- [ ] Thêm social preview image
- [ ] Invite collaborators (nếu có)
- [ ] Tweet/announce release 🎉

---

## 🔗 Tham khảo

- [GitHub Publishing Guide](https://docs.github.com/en/repositories/creating-and-managing-repositories)
- [npm Publishing Guide](https://docs.npmjs.com/packages-and-modules/contributing-packages-to-the-registry)
- [GitHub Actions Docs](https://docs.github.com/en/actions)
- [oh-my-codex Original](https://github.com/Yeachan-Heo/oh-my-codex)

---

**Good luck with your release! 🚀**
