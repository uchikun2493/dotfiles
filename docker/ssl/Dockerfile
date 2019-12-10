FROM ros:melodic
LABEL uchikun2493 <um2493@gmail.com>

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update -y
RUN apt-get install -y libprotobuf-dev libprotoc-dev protobuf-compiler
RUN apt-get install -y python-pip
RUN pip2 install protobuf

RUN mkdir /dir

WORKDIR /dir
VOLUME ["/dir"]

CMD ["bash"]

