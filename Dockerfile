# 1. Empezar con la imagen oficial de n8n
FROM n8nio/n8n

# 2. Cambiar al usuario root para poder instalar programas
USER root

# 3. Actualizar el gestor de paquetes e instalar pip
RUN apk update && apk add --no-cache py3-pip

# 4. Usar pip para FORZAR la instalación de la librería,
#    ignorando la protección del sistema operativo.
#    Esto es necesario para que el entorno aislado del nodo "Code" pueda encontrarla.
RUN pip install --no-cache-dir --break-system-packages reportlab

# 5. Volver al usuario normal de n8n por seguridad
USER node
