FROM ubuntu:14.04

MAINTAINER Tomer Shalev <toshalev@shutterfly.com>

# PyEnv
ENV PYENV_ROOT /root/.pyenv
ENV PATH $PYENV_ROOT/shims:$PYENV_ROOT/bin:$PATH
# Configure Python not to try to write .pyc files on the import of source modules
ENV PYTHONDONTWRITEBYTECODE true
ENV PYTHON_VERSION 3.6.2

RUN sudo apt-get update -q \
    && sudo apt-get install -y --no-install-recommends \
        build-essential \
        ca-certificates \
        curl \
        git \
        libbz2-dev \
        libreadline-dev \
        libsqlite3-dev \
        libssl-dev \
        zlib1g-dev

# Install pyenv and default python version
RUN git clone https://github.com/yyuu/pyenv.git /root/.pyenv \
    && cd /root/.pyenv \
    && git checkout `git describe --abbrev=0 --tags` \
    && sudo echo 'export PATH="$HOME/.pyenv/bin:$PATH"' >> ~/.bashrc \
    && sudo echo 'eval "$(pyenv init -)"'               >> ~/.bashrc

RUN pyenv install $PYTHON_VERSION
# RUN pyenv local $PYTHON_VERSION

