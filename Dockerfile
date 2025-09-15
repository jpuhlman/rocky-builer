FROM rockylinux/rockylinux:10
RUN yum -y update
RUN yum install -y epel-release
RUN yum install -y epel-release \
    sudo \
    vim \
    rpm-build \
    make \
    git \
    rpm \
    python2 \
    python3 \
    libstdc++.i686 \
    lftp \
    gcc \
    gcc-c++ \
    diffstat \
    lynx \
    wget \
    perl-Data-Dumper; \
    yum install -y \
    zstd \
    screen \
    perl-core \
    bzip2 \
    cpio \
    diffstat \
    which \
    xz \
    langpacks-en \
    mock
RUN yum install -y sudo
ENV RELEASE_DISTRO rocky
ENV RELEASE_VERSION 10
COPY init.sh /
ENV LANG en_US.UTF-8
CMD  bash /init.sh
