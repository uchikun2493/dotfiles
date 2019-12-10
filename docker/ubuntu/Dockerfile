FROM ubuntu:latest
LABEL uchikun2493 <um2493@gmail.com>

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update
RUN apt-get install -y  python3-dev \
                        python3-pip \
                        python3-tk \
                        libopencv-dev
RUN pip3 install        chainer \
                        matplotlib \
                        opencv-python
RUN mkdir /dir
WORKDIR /dir
VOLUME ["/dir"]

CMD ["bash"]

