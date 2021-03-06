FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y \
    git \
    tmux \
    vim-gnome

RUN useradd -ms /bin/bash $USER
USER $USER
WORKDIR $HOME

EXPOSE 5000-5050
COPY . .

CMD tmux
