# Simple PowerShell Script to Push to GitHub
Set-Location $PSScriptRoot

Write-Host "Pushing oh-my-qwen to GitHub..." -ForegroundColor Cyan
Write-Host ""

# Add all changes
Write-Host "Adding all changes..."
git add .

# Commit
Write-Host "Committing changes..."
git commit -m "feat: Complete oh-my-qwen migration"

# Check and update remote if needed
$remoteUrl = git remote get-url origin
if ($remoteUrl -notlike "*HaydernCenterpoint/oh-my-qwen*") {
    Write-Host "Updating remote URL..." -ForegroundColor Yellow
    git remote set-url origin https://github.com/HaydernCenterpoint/oh-my-qwen.git
}

# Push
Write-Host "Pushing to GitHub..." -ForegroundColor Yellow
Write-Host "You will be prompted for credentials..." -ForegroundColor Red
Write-Host ""

git push -u origin main

if ($LASTEXITCODE -eq 0) {
    Write-Host ""
    Write-Host "SUCCESS! Code pushed to GitHub!" -ForegroundColor Green
    Write-Host "https://github.com/HaydernCenterpoint/oh-my-qwen" -ForegroundColor Cyan
} else {
    Write-Host ""
    Write-Host "Push failed! Try GitHub Desktop instead." -ForegroundColor Red
}

Write-Host ""
Write-Host "Press any key to exit..."
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
