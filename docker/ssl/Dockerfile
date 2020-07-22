FROM ros:melodic
LABEL uchikun2493 <um2493@gmail.com>

ENV DEBIAN_FRONTEND=noninteractive

# update
RUN apt-get update -y
# install: consai2
RUN apt-get install -y libprotobuf-dev libprotoc-dev protobuf-compiler
RUN apt-get install -y python-pip
RUN pip2 install protobuf
RUN apt-get install ros-$ROS_DISTRO-navigation ros-$ROS_DISTRO-bfl -y
# RUN echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc
# RUN ["/bin/bash", "-c", "source ~/.bashrc"]
# RUN mkdir -p /home/catkin_ws/src
# RUN cd /home/catkin_ws/src
# RUN apt-get install git
# RUN git clone https://github.com/SSL-Roots/consai2
# # RUN rosdep install -r -y --from-paths . --ignore-src
# RUN cd /home/catkin_ws/
# RUN /bin/bash -c /opt/ros/melodic/setup.bash \
#         && catkin_make
# # RUN catkin_make
# RUN echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc
# RUN ["/bin/bash", "-c", "source ~/.bashrc"]
# RUN ["/bin/bash", "-c", "source ~/catkin_ws/devel/setup.bash"]
#
WORKDIR /dir
VOLUME ["/dir"]

CMD ["bash"]

