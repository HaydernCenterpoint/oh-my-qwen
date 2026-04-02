# PowerShell Script to Push oh-my-qwen to GitHub
# Run this script to push all code to your GitHub repository

Write-Host "🚀 oh-my-qwen - Push to GitHub" -ForegroundColor Cyan
Write-Host "================================" -ForegroundColor Cyan
Write-Host ""

# Navigate to repository directory
Set-Location $PSScriptRoot

Write-Host "📂 Current directory: $(Get-Location)" -ForegroundColor Yellow
Write-Host ""

# Check git status
Write-Host "🔍 Checking git status..." -ForegroundColor Yellow
git status --short

Write-Host ""
Write-Host "️  WARNING: This will push code to GitHub!" -ForegroundColor Red
Write-Host ""
Write-Host "Repository: https://github.com/HaydernCenterpoint/oh-my-qwen" -ForegroundColor Cyan
Write-Host ""

# Ask for confirmation
$confirmation = Read-Host "Do you want to continue? (y/n)"

if ($confirmation -ne 'y' -and $confirmation -ne 'Y') {
    Write-Host "❌ Cancelled by user" -ForegroundColor Red
    exit
}

Write-Host ""
Write-Host "📝 Staging all changes..." -ForegroundColor Yellow
git add .

Write-Host ""
Write-Host "💾 Creating commit..." -ForegroundColor Yellow
$commitMessage = "feat: Complete oh-my-qwen migration from oh-my-codex

- Rename from omx to omq throughout codebase
- Update models to Qwen (qwen-max, qwen-plus, qwen-turbo)
- Change CLI entry point from omx.ts to omq.ts
- Update paths from .codex to .qwen-code
- Add installation guides (English, Vietnamese, Chinese)
- Add GitHub templates (issues, PRs, workflows)
- Add setup scripts for GitHub publishing
- Update README with Qwen Code integration
- Add OpenCode & Cline integration guide"

git commit -m $commitMessage

Write-Host ""
Write-Host "🔗 Checking remote URL..." -ForegroundColor Yellow
$remoteUrl = git remote get-url origin
Write-Host "Remote: $remoteUrl" -ForegroundColor Cyan

if ($remoteUrl -notlike "*HaydernCenterpoint/oh-my-qwen*") {
    Write-Host ""
    Write-Host "⚠️  Remote URL is not correct!" -ForegroundColor Red
    Write-Host "Current: $remoteUrl" -ForegroundColor Yellow
    Write-Host ""
    Write-Host "Updating remote to: https://github.com/HaydernCenterpoint/oh-my-qwen.git" -ForegroundColor Cyan
    
    $updateConfirmation = Read-Host "Update remote URL? (y/n)"
    
    if ($updateConfirmation -eq 'y' -or $updateConfirmation -eq 'Y') {
        git remote set-url origin https://github.com/HaydernCenterpoint/oh-my-qwen.git
        Write-Host "✅ Remote URL updated" -ForegroundColor Green
    } else {
        Write-Host "❌ Cannot continue without correct remote URL" -ForegroundColor Red
        exit
    }
}

Write-Host ""
Write-Host "🚀 Pushing to GitHub..." -ForegroundColor Yellow
Write-Host ""
Write-Host "⚠️  You will be prompted for GitHub credentials" -ForegroundColor Red
Write-Host "   - Use your GitHub username: HaydernCenterpoint" -ForegroundColor Yellow
Write-Host "   - Use your Personal Access Token (NOT password)" -ForegroundColor Yellow
Write-Host "   - Create token at: https://github.com/settings/tokens" -ForegroundColor Cyan
Write-Host ""

# Try to push
git push -u origin main

if ($LASTEXITCODE -eq 0) {
    Write-Host ""
    Write-Host "✅✅✅ SUCCESS! ✅✅✅" -ForegroundColor Green
    Write-Host ""
    Write-Host "🎉 Code has been pushed to GitHub!" -ForegroundColor Green
    Write-Host ""
    Write-Host "📍 View your repository:" -ForegroundColor Cyan
    Write-Host "   https://github.com/HaydernCenterpoint/oh-my-qwen" -ForegroundColor White
    Write-Host ""
    Write-Host "📝 Next steps:" -ForegroundColor Cyan
    Write-Host "   1. ⭐ Star your repository" -ForegroundColor White
    Write-Host "   2. 🏷️  Create first release: git tag -a v1.0.0 -m 'Initial release'" -ForegroundColor White
    Write-Host "   3. 🚀 Push tag: git push origin v1.0.0" -ForegroundColor White
    Write-Host "   4.  Publish to npm (optional): npm publish --access public" -ForegroundColor White
    Write-Host "   5. 🌐 Enable GitHub Actions in repository settings" -ForegroundColor White
    Write-Host ""
} else {
    Write-Host ""
    Write-Host "❌ Push failed!" -ForegroundColor Red
    Write-Host ""
    Write-Host "Common solutions:" -ForegroundColor Yellow
    Write-Host "1. Make sure you have a Personal Access Token:" -ForegroundColor White
    Write-Host "   https://github.com/settings/tokens" -ForegroundColor Cyan
    Write-Host ""
    Write-Host "2. Token needs 'repo' scope" -ForegroundColor White
    Write-Host ""
    Write-Host "3. Try using GitHub Desktop instead:" -ForegroundColor White
    Write-Host "   File → Add Local Repository → Choose this folder → Push" -ForegroundColor Cyan
    Write-Host ""
}

Write-Host ""
Write-Host "Press any key to continue..."
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
