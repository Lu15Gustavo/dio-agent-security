$ErrorActionPreference = "Stop"

$projectRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location $projectRoot

Write-Host "Executando o laboratório de SQL Injection..."
python -m unittest agent.test_lab -v
exit $LASTEXITCODE
