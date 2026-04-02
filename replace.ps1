Set-Location $PSScriptRoot
Write-Host "Replacing OMX with QMX..." -ForegroundColor Cyan
$files = Get-ChildItem -Recurse -Include *.ts,*.js,*.md,*.json -Exclude node_modules,dist
foreach ($file in $files) {
    $content = Get-Content $file.FullName -Raw -Encoding UTF8
    $newContent = $content -replace 'OMX','QMX' -replace 'omx','qmx'
    if ($content -ne $newContent) {
        Set-Content $file.FullName -Value $newContent -Encoding UTF8 -NoNewline
        Write-Host "Updated: $($file.Name)" -ForegroundColor Green
    }
}
Write-Host "Done!" -ForegroundColor Green
