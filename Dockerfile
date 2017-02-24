FROM debian:jessie

RUN apt update; apt install -y autoconf automake libtool git gcc make

RUN git clone -b v1.x https://github.com/libuv/libuv /src/libuv
WORKDIR /src/libuv
RUN sh autogen.sh
RUN ./configure
RUN make -j8
RUN make -j8 test/run-tests

CMD test/run-tests fs_event_watch_file
