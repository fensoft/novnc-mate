FROM jlesage/baseimage-gui:ubuntu-18.04
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get -y install ubuntu-mate-desktop && apt clean
RUN apt-get update && apt-get -y install mate-desktop-environment-extras && apt clean
RUN apt-get update && apt-get -y install sudo && apt clean
RUN rm /var/lib/dpkg/statoverride
RUN echo "root:pass" | chpasswd
RUN echo "user ALL=(ALL) NOPASSWD:ALL" | tee /etc/sudoers.d/user
COPY startapp.sh /startapp.sh
VOLUME ["/tmp/.X11-unix"]
ENV APP_NAME="Desktop"
