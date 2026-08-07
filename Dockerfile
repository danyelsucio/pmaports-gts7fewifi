FROM ubuntu:22.04
RUN apt-get update && apt-get install -y python3 python3-pip python3-venv git openssl device-tree-compiler bmap-tools sudo curl kpartx
RUN git clone https://gitlab.postmarketos.org/postmarketOS/pmbootstrap.git /pmbootstrap && cd /pmbootstrap && git checkout 3.10.0
RUN python3 -m venv /pmbootstrap/venv
RUN /pmbootstrap/venv/bin/pip install /pmbootstrap tomli
WORKDIR /work
CMD ["/pmbootstrap/venv/bin/pmbootstrap"]
