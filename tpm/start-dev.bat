@echo off
echo ========================================
echo  Servidor de Desarrollo Shopify
echo ========================================
echo.
echo Tienda: tienda-trust.myshopify.com
echo.
echo NOTA: Si te pide la contraseña de la tienda,
echo       ingresa la contraseña de proteccion del storefront
echo       o usa un token de acceso de tema.
echo.
echo Iniciando servidor...
echo.
shopify theme dev --store tienda-trust.myshopify.com
pause

