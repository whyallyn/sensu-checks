# Checks Memory and reports highest utililzation process if warn/crit
param([int] $warn = 60, [int] $critical = 90)

. (Join-Path $PSScriptRoot checks_helper.ps1)

Perform-Counter-Check -counterPath "\Memory\% Committed Bytes In Use" -outputstring "Used memory at {0} %"  -warn $warn -critical $critical



