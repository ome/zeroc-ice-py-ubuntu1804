FROM ubuntu:18.04
MAINTAINER ome-devel@lists.openmicroscopy.org.uk

ENV TZ=Europe/London
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN echo 'APT::Install-Recommends 0;' > /etc/apt/apt.conf.d/01norecommends \
 && echo 'APT::Install-Suggests 0;' >> /etc/apt/apt.conf.d/01norecommends

ADD build_ice.sh /
# Install ice from source
RUN bash build_ice.sh
# Zeroc IcePy
RUN pip install zeroc-ice==3.6.4

RUN pip install wheel
RUN mkdir /dist
ADD build.sh /
CMD ["/build.sh"]
