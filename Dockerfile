# 1. Empezar con la imagen oficial de n8n
FROM n8nio/n8n

# 2. Cambiar al usuario root para poder instalar programas
USER root

# 3. Actualizar el gestor de paquetes e instalar pip
RUN apk update && apk add --no-cache py3-pip

# 4. Ahora que pip existe, instalar la librería de Python
RUN pip install reportlab

# 5. Volver al usuario normal de n8n por seguridad
USER node
