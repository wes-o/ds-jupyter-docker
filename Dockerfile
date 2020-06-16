# Written by Wes Oler, https://github.com/wes-o
# Distributed under terms of MIT License

# Official image from Docker Hub
# `docker pull jupyter/base-notebook:python-3.7.6`
ARG BASE_CONTAINER=jupyter/base-notebook:python-3.7.6

FROM ${BASE_CONTAINER}

LABEL Version=0.0.1
LABEL MAINTAINER="Wes Oler <wes-o@users.noreply.github.com>"

ARG NB_USER=jovyan
ARG NB_UID=1000
ENV USER ${NB_USER}
ENV NB_UID ${NB_UID}
ENV HOME /home/${NB_USER}

USER root

# Uncomment for adding a new NB_USER
#
# RUN adduser --disabled-password \
#    --gecos "Default user" \
#    --uid ${NB_UID} \
#    ${NB_USER}

# Install additional OS dependencies 
RUN apt-get update && apt-get install -yq --no-install-recommends build-essential checkinstall \
    git \
    inkscape \
    jed \
    libsm6 \
    libxext-dev \
    libxrender1 \
    lmodern \
    netcat \
    python-dev \
    # ---- nbconvert dependencies ----
    texlive-xetex \
    texlive-fonts-recommended \
    texlive-generic-recommended \
    unzip \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Switch back to jovyan to avoid accidental container runs as root
USER $NB_UID

WORKDIR /home/jovyan/work

# Create permanent storage for volume mounts
RUN mkdir /home/jovyan/work/volume_data
VOLUME ["/home/jovyan/work/volume_data"]

# Contents of repository are in ${HOME}
COPY . ${HOME}
USER root
RUN chown -R ${NB_UID} ${HOME}
USER ${NB_USER}

# Build an image:
# docker build -t <image-name> .
# 
# (optional) Change every instance of `joyvan`:
# docker build -t <image-name> --build-arg NB_USER=<new-value> .

# Run image:
# docker run -it --rm -p 8889-8900:8889-8900 <image-name>
# docker run -it --rm -p 8889-8900:8889-8900 <image-name> //bin/bash
# 
# After New Dependencies are Added:
#-> docker-compose up --force-recreate --build
