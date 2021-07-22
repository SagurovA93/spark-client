FROM docker.io/bitnami/spark:2.4.6-debian-10-r14

USER root
RUN apt update && \
    apt install vim git -y && \
    apt clean autoclean && \
    apt clean autoremove --yes

COPY vimrc.local /etc/vim/vimrc.local
COPY bash.bashrc /etc/bash.bashrc

ENTRYPOINT ["sleep", "infinity"]
