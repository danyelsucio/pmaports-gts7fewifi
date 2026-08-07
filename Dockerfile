FROM ubuntu:latest
RUN apt-get update && apt-get install -y python3 python3-pip git openssl device-tree-compiler bmap-tools
RUN git clone https://gitlab.postmarketos.org/postmarketOS/pmbootstrap.git /pmbootstrap
RUN pip3 install --upgrade pip && pip3 install /pmbootstrap --break-system-packages
WORKDIR /work
ENTRYPOINT ["pmbootstrap"]
