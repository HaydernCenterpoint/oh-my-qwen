# PowerShell script to replace OMX with QMX in all files
Set-Location $PSScriptRoot

Write-Host "Replacing OMX with QMX in all files..." -ForegroundColor Cyan
Write-Host ""

$files = Get-ChildItem -Recurse -Include *.ts,*.js,*.md,*.json,*.toml,*.yml,*.yaml,*.sh -Exclude node_modules,dist

$count = 0
foreach ($file in $files) {
    $content = Get-Content $file.FullName -Raw -Encoding UTF8
    
    # Replace OMX with QMX (case variations)
    $newContent = $content `
        -replace '\bOMX\b', 'QMX' `
        -replace '\bomx\b', 'qmx' `
        -replace '\bOh My Codex\b', 'Oh My Qwen' `
        -replace '\boh-my-codex\b', 'oh-my-qwen'
    
    if ($content -ne $newContent) {
        Set-Content $file.FullName -Value $newContent -Encoding UTF8 -NoNewline
        Write-Host "✓ Updated: $($file.Name)" -ForegroundColor Green
        $count++
    }
}

Write-Host ""
Write-Host "Updated $count files" -ForegroundColor Yellow
Write-Host ""
Write-Host "Done!" -ForegroundColor Green
