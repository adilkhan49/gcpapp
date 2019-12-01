FROM ubuntu:bionic

RUN apt-get update \
  && apt-get install -y \
    g++  \
    make \
    cmake \
    clang-format \
    clang \
    python \
    python3-dev \
    vim \
    exuberant-ctags \
    git \
    wget \
    libssl-dev \
    libboost-program-options-dev \
    libboost-system-dev \
    libboost-date-time-dev \
    libboost-filesystem-dev \
    libboost-iostreams-dev \
    libboost-python-dev \
    libsoci-dev \
    libpq-dev \
    sqlite3 \
    libsqlite3-dev \
    libquickfix-dev \
    libtbb-dev \
    liblog4cxx-dev