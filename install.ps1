$ErrorActionPreference = 'Stop'
$source = $PSScriptRoot
if ($env:XDG_CONFIG_HOME) { $config = Join-Path $env:XDG_CONFIG_HOME 'opencode' }
else { $config = Join-Path $HOME '.config/opencode' }
$agents = @(Get-ChildItem (Join-Path $source 'agents') -Filter '*.md' -File)
$skills = @(Get-ChildItem (Join-Path $source 'skills') -Directory)
$conflicts = @()
foreach ($item in $agents) { $path = Join-Path (Join-Path $config 'agents') $item.Name; if (Test-Path -LiteralPath $path) { $conflicts += $path } }
foreach ($item in $skills) { $path = Join-Path (Join-Path $config 'skills') $item.Name; if (Test-Path -LiteralPath $path) { $conflicts += $path } }
if ($conflicts.Count -gt 0) {
  Write-Host 'No se ha copiado nada. Ya existen estos destinos:'
  $conflicts | ForEach-Object { Write-Host "  $_" }
  throw 'Revisa los archivos existentes antes de instalar manualmente.'
}
New-Item -ItemType Directory -Path (Join-Path $config 'agents'), (Join-Path $config 'skills') -Force | Out-Null
foreach ($item in $agents) { Copy-Item -LiteralPath $item.FullName -Destination (Join-Path $config 'agents') }
foreach ($item in $skills) { Copy-Item -LiteralPath $item.FullName -Destination (Join-Path $config 'skills') -Recurse }
Write-Host "Agentes y skills instalados en $config. En OpenCode usa /reload si no aparecen."
