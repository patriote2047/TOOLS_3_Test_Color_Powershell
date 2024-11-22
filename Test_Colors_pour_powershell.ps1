# Test des couleurs PowerShell
$colors = @(
    "Black",
    "DarkBlue",
    "DarkGreen",
    "DarkCyan",
    "DarkRed",
    "DarkMagenta",
    "DarkYellow",
    "Gray",
    "DarkGray",
    "Blue",
    "Green",
    "Cyan",
    "Red",
    "Magenta",
    "Yellow",
    "White"
)

Write-Host "`nTest des couleurs PowerShell :"
Write-Host "=========================="

foreach ($color in $colors) {
    Write-Host "Test de la couleur : " -NoNewline
    Write-Host $color -ForegroundColor $color
}

Write-Host "`nExemples avec fond noir :"
Write-Host "===================="
foreach ($color in $colors) {
    Write-Host "Texte en $color sur fond noir" -ForegroundColor $color -BackgroundColor Black
}

Write-Host "`nExemples de combinaisons :"
Write-Host "====================="
Write-Host "Erreur importante" -ForegroundColor Red -BackgroundColor Black
Write-Host "Avertissement" -ForegroundColor Yellow -BackgroundColor Black
Write-Host "Information" -ForegroundColor Cyan -BackgroundColor Black
Write-Host "Succès" -ForegroundColor Green -BackgroundColor Black
Write-Host "Composant matériel" -ForegroundColor Yellow -BackgroundColor Black
Write-Host "Valeur numérique" -ForegroundColor Blue -BackgroundColor Black
Write-Host "Description" -ForegroundColor DarkBlue -BackgroundColor Black
Write-Host "Titre de section" -ForegroundColor DarkCyan -BackgroundColor Black

Write-Host "`nAppuyez sur une touche pour continuer..."
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
