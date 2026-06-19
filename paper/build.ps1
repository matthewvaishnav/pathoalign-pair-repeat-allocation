$ErrorActionPreference = "Stop"
Set-Location $PSScriptRoot

pdflatex -interaction=nonstopmode -halt-on-error main.tex
pdflatex -interaction=nonstopmode -halt-on-error main.tex

Copy-Item main.pdf pathoalign-matched-budget-allocation.pdf -Force
Write-Host "Built paper\pathoalign-matched-budget-allocation.pdf"
