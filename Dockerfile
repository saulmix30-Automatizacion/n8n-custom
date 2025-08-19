FROM n8nio/n8n:latest

# Force rebuild - cambiar este número cuando actualices: v2
RUN echo "Build version 2.0"

# Instalar Python y pip
RUN apk update && apk add --no-cache py3-pip

# Instalar ReportLab
RUN pip install --no-cache-dir --break-system-packages reportlab

# Verificar instalación
RUN python3 -c "import reportlab; print('ReportLab version:', reportlab.__version__)"
