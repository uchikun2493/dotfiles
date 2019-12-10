FROM python:latest
LABEL uchikun2493 <um2493@gmail.com>

RUN apt-get update
RUN apt-get install -y  libopencv-dev
RUN pip install \
    numpy \
    scipy \
    chainer \
    matplotlib \
    opencv-python
RUN mkdir /dir
WORKDIR /dir
VOLUME ["/dir"]

CMD ["bash"]

