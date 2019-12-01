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
RUN git clone https://github.com/opentradesolutions/opentrade /home/opentrade/
WORKDIR /home/opentrade
RUN make debug
RUN wget https://github.com/opentradesolutions/data/raw/master/test.sqlite3
RUN wget https://raw.githubusercontent.com/opentradesolutions/data/master/bbgids.txt
RUN wget https://github.com/opentradesolutions/data/raw/master/ticks.txt.xz.part1
RUN wget https://github.com/opentradesolutions/data/raw/master/ticks.txt.xz.part2
RUN cat ticks.txt.xz.part1 ticks.txt.xz.part2 > ticks.txt.xz
RUN xz -d ticks.txt.xz
RUN cp opentrade.conf-example opentrade.conf