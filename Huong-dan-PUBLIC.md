# 🚀 Hướng dẫn Public oh-my-qwen lên GitHub

Hướng dẫn từng bước để đưa project oh-my-qwen của bạn lên GitHub.

---

## 📋 Bước 1: Chuẩn bị

### Cập nhật thông tin cá nhân

Mở file `package.json` và thay đổi:

```json
{
  "name": "oh-my-qwen",
  "version": "1.0.0",
  "description": "Multi-agent orchestration layer for Qwen Code CLI",
  "author": "Tên của bạn <email@example.com>",
  "repository": {
    "type": "git",
    "url": "git+https://github.com/TEN_USERNAME/oh-my-qwen.git"
  },
  "homepage": "https://github.com/TEN_USERNAME/oh-my-qwen",
  "bugs": {
    "url": "https://github.com/TEN_USERNAME/oh-my-qwen/issues"
  }
}
```

**Thay `TEN_USERNAME` bằng GitHub username của bạn!**

---

## 📋 Bước 2: Tạo Repository trên GitHub

1. **Truy cập:** https://github.com/new

2. **Điền thông tin:**
   - Repository name: `oh-my-qwen`
   - Description: `Multi-agent orchestration layer for Qwen Code CLI`
   - Visibility: **Public** ✅
   
3. **⚠️ QUAN TRỌNG:** 
   - ❌ KHÔNG tick "Add a README file"
   - ❌ KHÔNG tick "Add .gitignore"
   - ❌ KHÔNG tick "Choose a license"
   
4. Click **"Create repository"**

---

## 📋 Bước 3: Push code lên GitHub

### Cách 1: Dùng script tự động (KHUYẾN NGHỊ)

```bash
cd oh-my-qwen
chmod +x scripts/setup-github.sh
./scripts/setup-github.sh
```

Script sẽ hỏi GitHub username của bạn và tự động làm mọi thứ!

### Cách 2: Làm thủ công

```bash
# 1. Vào thư mục project
cd oh-my-qwen

# 2. Khởi tạo Git
git init

# 3. Thêm tất cả files
git add .

# 4. Commit
git commit -m "Initial commit: oh-my-qwen for Qwen Code"

# 5. Đổi tên branch thành main
git branch -M main

# 6. Thêm remote (thay TEN_USERNAME)
git remote add origin https://github.com/TEN_USERNAME/oh-my-qwen.git

# 7. Push lên GitHub
git push -u origin main
```

---

## 📋 Bước 4: Tạo Release đầu tiên

### Tạo tag version

```bash
git tag -a v1.0.0 -m "Initial release: oh-my-qwen for Qwen Code"
git push origin v1.0.0
```

### Tạo Release trên GitHub

1. Vào: `https://github.com/TEN_USERNAME/oh-my-qwen/releases`
2. Click **"Draft a new release"**
3. Chọn tag: `v1.0.0`
4. Release title: `Initial Release - v1.0.0`
5. Copy nội dung này vào description:

```markdown
## 🎉 oh-my-qwen Initial Release

### Tính năng chính
- ✅ Tương thích hoàn toàn với oh-my-codex workflows
- ✅ Tích hợp Qwen Code CLI
- ✅ Multi-agent orchestration
- ✅ Skills: $plan, $ralph, $team, $deep-interview
- ✅ Role keywords: $architect, $executor, $planner
- ✅ Quản lý state trong .omx/
- ✅ Team mode với tmux coordination
- ✅ Hỗ trợ MCP servers

### Cài đặt
```bash
npm install -g oh-my-qwen
omq setup
omq --high
```

### Sử dụng nhanh
```bash
# Khởi động với Qwen Code
omq --high

# Sử dụng skills
$architect "analyze the authentication flow"
$plan "ship this feature cleanly"
$ralph "fix all failing tests"
```

### Tài liệu
- [Installation Guide](INSTALL-OPENCODE-CLINE.md)
- [Migration Guide](MIGRATION_TO_QWEN.md)
- [Skills Reference](docs/skills.html)

### Ghi công
Forked từ [oh-my-codex](https://github.com/Yeachan-Heo/oh-my-codex) của Yeachan Heo.
```

6. Click **"Publish release"**

---

## 📋 Bước 5: Publish lên npm (Optional)

Nếu muốn người khác cài đặt qua npm:

### 1. Kiểm tra tên

```bash
npm view oh-my-qwen
```

Nếu thấy "404 Not Found" → Tên chưa được dùng, có thể publish!

Nếu có kết quả → Tên đã được dùng, đổi tên trong `package.json`:
- `oh-my-qwen-cli`
- `omq-cli`
- `qwen-orchestrator`

### 2. Đăng nhập npm

```bash
npm login
```

Nhập username, password, email của bạn trên npmjs.com

### 3. Publish

```bash
# Test trước (không thật sự publish)
npm publish --dry-run

# Publish thật
npm publish --access public
```

### 4. Kiểm tra

```bash
npm view oh-my-qwen
```

Truy cập: https://www.npmjs.com/package/oh-my-qwen

---

## 📋 Bước 6: Setup GitHub Actions (CI/CD)

GitHub Actions sẽ tự động test khi có push/PR.

### 1. Enable Actions

1. Vào repository của bạn
2. Click tab **Actions**
3. Click **"I understand my workflows, go ahead and enable them"**

### 2. Kiểm tra workflows

Đã có sẵn 2 workflows trong `.github/workflows/`:
- `ci.yml` - Tự động test khi push/PR
- `release.yml` - Tự động publish khi tạo release tag

### 3. Test

Push một thay đổi nhỏ để xem Actions chạy:

```bash
echo "# Test" >> README.md
git add README.md
git commit -m "Test CI"
git push
```

Vào tab **Actions** xem CI chạy.

---

## 📋 Bước 7: Tạo GitHub Pages (Optional)

Để có website đẹp tại `https://TEN_USERNAME.github.io/oh-my-qwen`:

### 1. Tạo branch gh-pages

```bash
git checkout --orphan gh-pages
git reset --hard
cp -r docs/* .
git add .
git commit -m "Setup GitHub Pages"
git push origin gh-pages --force
git checkout main
```

### 2. Enable Pages

1. Vào **Settings** → **Pages**
2. Source: **gh-pages** branch
3. Directory: `/ (root)`
4. Click **Save**

Đợi 2-3 phút, website sẽ có tại:
`https://TEN_USERNAME.github.io/oh-my-qwen`

---

## 📋 Bước 8: Hoàn thiện

### Social Preview

1. Tạo ảnh 1280x640px (dùng Canva, Figma)
2. Upload vào repository
3. Vào **Settings** → **General**
4. Scroll xuống **Social preview**
5. Upload ảnh của bạn

### Issue Templates

Đã có sẵn trong `.github/ISSUE_TEMPLATE/`:
- ✅ bug-report.md
- ✅ feature-request.md

### Pull Request Template

Đã có sẵn: `.github/pull_request_template.md`

### Discord Community

Nếu có Discord server:
1. Tạo invite link
2. Cập nhật vào README.md
3. Thêm badge Discord vào đầu README

---

## 📋 Bước 9: Quảng bá

### Checklist

- [ ] Tweet về release
- [ ] Post lên Reddit (r/programming, r/webdev)
- [ ] Share trên Discord communities
- [ ] Viết blog post hướng dẫn sử dụng
- [ ] Thêm vào awesome-lists
- [ ] Tag Qwen team trên Twitter

### Template Tweet

```
🎉 Excited to announce oh-my-qwen v1.0.0!

Multi-agent orchestration layer for @QwenLM Code CLI

✨ Features:
- $plan, $ralph, $team workflows
- Role keywords: $architect, $executor
- State management in .omx/

Try it: npm install -g oh-my-qwen

#Qwen #AI #Coding #OpenSource
```

---

## 🎯 Troubleshooting

### Lỗi: "remote origin already exists"

```bash
git remote remove origin
git remote add origin https://github.com/TEN_USERNAME/oh-my-qwen.git
```

### Lỗi: "name already taken" (npm)

Đổi tên trong `package.json`:
```json
{
  "name": "oh-my-qwen-cli"
}
```

### Lỗi: "permission denied"

```bash
# Với script
chmod +x scripts/setup-github.sh
./scripts/setup-github.sh
```

### Lỗi: "npm ERR! code E404"

Chưa login npm:
```bash
npm login
```

---

## 📊 Theo dõi Stats

### GitHub Stars
https://star-history.com/#TEN_USERNAME/oh-my-qwen

### npm Downloads  
https://www.npmjs.com/package/oh-my-qwen

### GitHub Traffic
Vào repository → **Insights** → **Traffic**

---

## ✅ Checklist tổng hợp

Copy checklist này và tick khi hoàn thành:

```
[ ] Cập nhật package.json với thông tin cá nhân
[ ] Cập nhật README.md với links mới  
[ ] Tạo GitHub repository
[ ] Push code lên GitHub
[ ] Tạo release v1.0.0
[ ] Setup GitHub Actions
[ ] Publish lên npm (optional)
[ ] Tạo GitHub Pages (optional)
[ ] Thêm social preview
[ ] Tweet/announce release
[ ] Share trên communities
```

---

## 🎊 Chúc mừng!

Bạn đã public oh-my-qwen lên GitHub thành công! 🚀

**Link repository của bạn:**
`https://github.com/TEN_USERNAME/oh-my-qwen`

**Link npm (nếu publish):**
`https://www.npmjs.com/package/oh-my-qwen`

---

## 📚 Tài liệu tham khảo

- [GitHub Documentation](https://docs.github.com)
- [npm Documentation](https://docs.npmjs.com)
- [GitHub Actions](https://docs.github.com/en/actions)
- [ oh-my-codex Original](https://github.com/Yeachan-Heo/oh-my-codex)

**Good luck! 🎉**
