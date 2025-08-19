# 1. Empezar con la imagen oficial de n8n
FROM n8nio/n8n

# 2. Cambiar al usuario root para poder instalar
USER root

# 3. Usar el gestor de paquetes del sistema (apk) para instalar la librería
# El paquete para "reportlab" en Alpine se llama "py3-reportlab"
RUN apk update && apk add --no-cache py3-reportlab

# 4. Volver al usuario normal de n8n por seguridad
USER node
