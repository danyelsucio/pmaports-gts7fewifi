FROM ubuntu:latest
RUN apt-get update && apt-get install -y python3 python3-pip git openssl device-tree-compiler bmap-tools kpartx
RUN git clone https://gitlab.postmarketos.org/postmarketOS/pmbootstrap.git /pmbootstrap
RUN python3 -m venv /pmbootstrap/venv
RUN /pmbootstrap/venv/bin/pip install /pmbootstrap
WORKDIR /work
CMD ["/pmbootstrap/venv/bin/pmbootstrap"]
