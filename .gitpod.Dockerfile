FROM gitpod/workspace-full-vnc

USER gitpod

# Install custom tools, runtime, etc. using apt-get
# For example, the command below would install "bastet" - a command line tetris clone:
#
# RUN sudo apt-get -q update && \
#     sudo apt-get install -yq bastet && \
#     sudo rm -rf /var/lib/apt/lists/*
#
# More information: https://www.gitpod.io/docs/config-docker/
#
# ---------------------------------------------------------------------
# libgtk-3-dev             : for https://github.com/andlabs/ui
# libgl1-mesa-dev, xorg-dev: for https://github.com/fyne-io/fyne
# ---------------------------------------------------------------------
RUN sudo apt-get update && \
    sudo apt-get install -y libgtk-3-dev && \ 
    sudo apt-get install -y libgl1-mesa-dev xorg-dev && \
    sudo rm -rf /var/lib/apt/lists/*