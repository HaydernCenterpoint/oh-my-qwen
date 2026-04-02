# 📋 Checklist để Public oh-my-qwen lên GitHub

## ✅ Trước khi Push

### 1. Cập nhật thông tin cá nhân

**File: `package.json`**
```json
{
  "name": "oh-my-qwen",
  "version": "1.0.0",
  "author": "Your Name <your.email@example.com>",
  "repository": {
    "type": "git",
    "url": "git+https://github.com/YOUR_USERNAME/oh-my-qwen.git"
  },
  "homepage": "https://github.com/YOUR_USERNAME/oh-my-qwen",
  "bugs": {
    "url": "https://github.com/YOUR_USERNAME/oh-my-qwen/issues"
  }
}
```

**File: `README.md`**
- [ ] Thay thế `your-username` bằng username GitHub của bạn
- [ ] Cập nhật tất cả các links
- [ ] Thay đổi badges
- [ ] Thêm Discord invite link của bạn (nếu có)

### 2. Tạo GitHub Repository

1. Truy cập: https://github.com/new
2. Điền thông tin:
   - **Repository name:** `oh-my-qwen`
   - **Description:** Multi-agent orchestration layer for Qwen Code CLI
   - **Visibility:** Public ✅
   - **⚠️ KHÔNG tick** vào "Initialize with README"

### 3. Chạy Script Setup

```bash
cd oh-my-qwen
chmod +x scripts/setup-github.sh
./scripts/setup-github.sh
```

Script sẽ tự động:
- ✅ Kiểm tra prerequisites
- ✅ Hướng dẫn tạo repository
- ✅ Cập nhật package.json (nếu có jq)
- ✅ Cài đặt dependencies
- ✅ Build project
- ✅ Commit và push lên GitHub

### 4. Hoặc làm thủ công

```bash
# Initialize Git
git init

# Add files
git add .

# Commit
git commit -m "Initial commit: oh-my-qwen for Qwen Code"

# Rename branch
git branch -M main

# Add remote (thay YOUR_USERNAME)
git remote add origin https://github.com/YOUR_USERNAME/oh-my-qwen.git

# Push
git push -u origin main
```

---

## ✅ Sau khi Push

### 5. Tạo Release đầu tiên

```bash
# Tag version
git tag -a v1.0.0 -m "Initial release: oh-my-qwen for Qwen Code"

# Push tag
git push origin v1.0.0
```

Sau đó vào GitHub Releases tạo release notes:
```markdown
## 🎉 Initial Release - v1.0.0

### Features
- ✅ Full oh-my-codex workflow compatibility
- ✅ Qwen Code CLI integration  
- ✅ Multi-agent orchestration
- ✅ Skills: $plan, $ralph, $team, $deep-interview
- ✅ Role keywords: $architect, $executor, $planner
- ✅ State management in .omx/
- ✅ Team mode with tmux coordination
- ✅ MCP server support

### Installation
```bash
npm install -g oh-my-qwen
omq setup
omq --high
```

### Acknowledgments
This project is forked from [oh-my-codex](https://github.com/Yeachan-Heo/oh-my-codex) by Yeachan Heo.
```

### 6. Publish lên npm (Optional)

```bash
# Login
npm login

# Test publish (dry run)
npm publish --dry-run

# Actual publish
npm publish --access public

# Verify
npm view oh-my-qwen
```

**⚠️ Lưu ý:** Nếu tên `oh-my-qwen` đã được đăng ký, đổi tên trong `package.json`:
- `oh-my-qwen-cli`
- `omq-cli`  
- `qwen-orchestrator`
- `oh-my-qwen-omq`

### 7. Setup GitHub Actions

Vào GitHub repository của bạn:
1. **Settings** → **Actions** → **General**
2. Enable GitHub Actions
3. CI sẽ tự động chạy khi có push/PR

### 8. Tạo GitHub Pages (Optional)

```bash
# Tạo branch gh-pages
git checkout --orphan gh-pages
git reset --hard

# Copy docs
cp -r docs/* .

# Commit
git add .
git commit -m "Setup GitHub Pages"
git push origin gh-pages --force
```

Sau đó:
1. Vào **Settings** → **Pages**
2. Source: **gh-pages** branch
3. Save

Website sẽ có tại: `https://YOUR_USERNAME.github.io/oh-my-qwen`

### 9. Cập nhật Social Preview

1. Tạo ảnh 1280x640px
2. Upload vào repository
3. Vào **Settings** → **General** → **Social preview**
4. Upload ảnh

### 10. Enable Discussions (Optional)

1. Vào **Settings** → **General**
2. Scroll xuống **Features**
3. Tick ✅ **Discussions**

---

## 📊 Theo dõi

### GitHub Stars
Theo dõi stars tại: https://star-history.com/#YOUR_USERNAME/oh-my-qwen

### npm Downloads
Theo dõi downloads: https://www.npmjs.com/package/oh-my-qwen

### GitHub Traffic
Vào repository → **Insights** → **Traffic**

---

## 🎉 Checklist tổng hợp

- [ ] Cập nhật `package.json`
- [ ] Cập nhật `README.md`
- [ ] Tạo GitHub repository
- [ ] Push code lên GitHub
- [ ] Tạo release v1.0.0
- [ ] Publish lên npm
- [ ] Setup GitHub Actions
- [ ] Tạo GitHub Pages (optional)
- [ ] Thêm social preview
- [ ] Enable Discussions
- [ ] Tweet/announce release 🚀
- [ ] Share trên Discord communities
- [ ] Viết blog post (optional)

---

## 📝 Templates cần cập nhật

### .github/ISSUE_TEMPLATE/
- [x] bug-report.md
- [x] feature-request.md

### .github/
- [x] pull_request_template.md
- [x] workflows/ci.yml
- [x] workflows/release.yml

### Scripts
- [x] scripts/setup-github.sh

---

## 🔗 Links hữu ích

- [GitHub Publishing Guide](https://docs.github.com/en/repositories/creating-and-managing-repositories)
- [npm Publishing Guide](https://docs.npmjs.com/packages-and-modules/contributing-packages-to-the-registry)
- [GitHub Actions](https://docs.github.com/en/actions)
- [oh-my-codex Original](https://github.com/Yeachan-Heo/oh-my-codex)

---

**Good luck! 🚀**
