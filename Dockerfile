FROM rockylinux:8
RUN yum -y update
RUN yum install -y epel-release \
    sudo \
    vim \
    rpm-build \
    mock \
    screen \
    make \
    git \
    rpm \
    python \
    libstdc++.i686 \
    lftp \
    gcc \
    gcc-c++ \
    diffstat \
    lynx \
    wget \
    perl-Data-Dumper; \
    yum install -y zstd
ENV RELEASE_DISTRO rocky
ENV RELEASE_VERSION 8
COPY init.sh /
ENV LANG en_US.UTF-8
CMD  bash /init.sh
