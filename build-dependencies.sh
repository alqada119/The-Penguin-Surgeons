apt-get -y update

apt -y install git

apt-get -y install build-essential

apt-get -y install u-boot-tools

apt -y install snapd

apt-get -y install tofrodos \
    iproute2 \
    gawk \
    make \
    net-tools \
    libncurses5-dev \
    tftpd \
    zlib1g:i386 \
    libssl-dev \
    flex \
    bison \
    libselinux1 \
    gnupg \
    wget \
    diffstat \
    chrpath \
    socat \
    xterm \
    autoconf \
    libtool \
    tar \
    unzip \
    texinfo \
    zlib1g-dev \
    gcc-multilib \
    build-essential \
    screen \
    pax \
    gzip

apt install python-minimal
apt-get install -y xvfb
apt-get install -y libsdl1.2-dev
apt-get install -y libglib2.0-dev

adduser user0

mkdir /opt/petalinux
chown -R 'user0' /opt/petalinux
./petalinux-*.run /opt/petalinux
# Optionally: sudo chown -R root /opt/petalinux

chmod +x ./petalinux-v2021.1-final-installer.run
./petalinux-v2021.1-final-installer.run -d /petalinux

dpkg-reconfigure dash