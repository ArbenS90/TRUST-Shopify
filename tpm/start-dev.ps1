# Script para iniciar el servidor de desarrollo de Shopify
# Ejecuta este script desde PowerShell: .\tpm\start-dev.ps1

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "  Servidor de Desarrollo Shopify" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "Tienda: tienda-trust.myshopify.com" -ForegroundColor Yellow
Write-Host ""

# Verificar si hay un token en variable de entorno o archivo
$token = $env:SHOPIFY_THEME_TOKEN

if (-not $token) {
    Write-Host "¿Tienes un token de acceso de tema? (S/N)" -ForegroundColor Yellow
    Write-Host "Si no tienes token, presiona N y se te pedirá la contraseña de la tienda" -ForegroundColor Gray
    $tieneToken = Read-Host
    
    if ($tieneToken -eq "S" -or $tieneToken -eq "s") {
        $token = Read-Host "Ingresa el token de acceso de tema" -AsSecureString
        $BSTR = [System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($token)
        $token = [System.Runtime.InteropServices.Marshal]::PtrToStringAuto($BSTR)
    }
}

if ($token) {
    Write-Host ""
    Write-Host "Ejecutando con token de acceso..." -ForegroundColor Green
    Write-Host ""
    shopify theme dev --store tienda-trust.myshopify.com --password=$token
} else {
    Write-Host ""
    Write-Host "Ejecutando sin token..." -ForegroundColor Green
    Write-Host "Se te pedirá la contraseña de la tienda cuando sea necesario." -ForegroundColor Yellow
    Write-Host ""
    shopify theme dev --store tienda-trust.myshopify.com
}

