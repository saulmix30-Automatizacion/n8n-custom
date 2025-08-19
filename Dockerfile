FROM n8nio/n8n:latest

# Instalar miniconda
RUN apk add --no-cache wget bash && \
    wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh && \
    chmod +x Miniconda3-latest-Linux-x86_64.sh && \
    ./Miniconda3-latest-Linux-x86_64.sh -b -p /opt/conda && \
    rm Miniconda3-latest-Linux-x86_64.sh

# Configurar PATH para conda
ENV PATH="/opt/conda/bin:$PATH"

# Instalar ReportLab con conda
RUN conda install -c conda-forge reportlab -y

# Verificar instalación
RUN python -c "import reportlab; print('ReportLab version:', reportlab.__version__)"
