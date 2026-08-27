FROM rockylinux:8
RUN yum -y update
RUN yum install --enablerepo powertools -y epel-release \
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
    iputils \
    iproute \
    perl-core \
    glibc-langpack-en \
    mock
ENV RELEASE_DISTRO rocky
ENV RELEASE_VERSION 8
COPY init.sh /
RUN alternatives --set python /usr/bin/python2
ENV LANG en_US.UTF-8
CMD  bash /init.sh
