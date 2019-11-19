FROM ubuntu:18.04
MAINTAINER ome-devel@lists.openmicroscopy.org.uk

ENV TZ=Europe/London
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN echo 'APT::Install-Recommends 0;' > /etc/apt/apt.conf.d/01norecommends \
 && echo 'APT::Install-Suggests 0;' >> /etc/apt/apt.conf.d/01norecommends

# Build ice cpp from source
ADD build_ice.sh /
RUN bash build_ice.sh

# Zeroc IcePy
RUN mkdir /dist
ADD build.sh /
CMD ["/build.sh"]
