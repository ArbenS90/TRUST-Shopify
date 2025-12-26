# Configuración de Shopify CLI

## Opción 1: Usar Token de Acceso de Tema (Recomendado)

1. Ve a tu Shopify Admin: https://tienda-trust.myshopify.com/admin
2. Navega a: **Settings** → **Apps and sales channels** → **Develop apps**
3. Crea una nueva app o usa una existente
4. En la sección **Theme access**, genera un token
5. Copia el token generado

Luego ejecuta:
```bash
shopify theme dev --store tienda-trust.myshopify.com --password=TU_TOKEN_AQUI
```

## Opción 2: Autenticación Interactiva

Ejecuta en tu terminal PowerShell:
```powershell
cd d:\shopify\Trust-Shopify
shopify theme dev --store tienda-trust.myshopify.com
```

Cuando aparezca el código de verificación:
1. Abre el enlace que aparece
2. Ingresa el código mostrado
3. Si pide contraseña de la tienda, ingrésala

## Comandos útiles después de configurar:

- `shopify theme dev` - Modo desarrollo con sincronización automática
- `shopify theme push` - Subir cambios manualmente
- `shopify theme pull` - Descargar cambios desde Shopify

