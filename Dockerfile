# Usamos Ubuntu 22.04 porque es estable y no tiene los problemas de Python 3.14
FROM ubuntu:22.04

# Instalamos las herramientas básicas que necesitaremos
RUN apt-get update && apt-get install -y \
    python3 python3-pip python3-venv \
    git openssl device-tree-compiler bmap-tools \
    curl wget sudo

# El punto de entrada será bash, para poder ejecutar comandos manualmente
CMD ["/bin/bash"]
