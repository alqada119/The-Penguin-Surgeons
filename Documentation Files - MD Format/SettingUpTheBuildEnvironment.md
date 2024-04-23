# Setting Up the Build Environment

Once you have your Linux environment set up, getting the build environment set up requires following a few steps. Generally setting up the build environment is done by following the steps on this page in NextGen RF's GitHub, and this is the link to that page: [https://github.com/NextGenRF-Design-Inc/bytepipe\_sdk/blob/main/docs/build\_environment/BuildEnv.md](https://github.com/NextGenRF-Design-Inc/bytepipe_sdk/blob/main/docs/build_environment/BuildEnv.md). If any issues are encountered along the way, check the **Error Documentation with Solutions** page to see if a solution can be found there.

## Initial Dependencies

**Before** installing the AMD Xilinx Suite of tools, it's important to make sure the following dependencies are installed first by running the following commands in your terminal:

```plain
sudo apt-get update
sudo apt install git
sudo apt-get install build-essential
sudo apt-get install u-boot-tools 
sudo apt install snapd
sudo dpkg-reconfigure dash
```

When running `sudo dpkg-reconfigure dash` select **no** when prompted. This will disable dash and enable bash.

## Xilinx Tool Suite - 2021.1

#### Vivado and Vitis

Once those initial dependencies are installed, it's time to start installing the AMD Xilinx Tools to your system. The first one NextGen RF's GitHub asks you to download is Vivado Design Suite, specifically the 2021.1 version. The link to the archived versions of Vivado Design Suite can be found here: [https://www.xilinx.com/support/download/index.html/content/xilinx/en/downloadNav/vivado-design-tools/archive.html](https://www.xilinx.com/support/download/index.html/content/xilinx/en/downloadNav/vivado-design-tools/archive.html).

After opening this webpage, choose 2021.1.

![](https://t9014167360.p.clickup-attachments.com/t9014167360/09a749b5-f0b6-4b54-a3a5-74e29c319cbf/image.png)

After choosing 2021.1, scroll down and choose the Linux Self Extracting Web Installer

![](https://t9014167360.p.clickup-attachments.com/t9014167360/ab6aee69-eb7e-4283-ae61-0a9092a7e0d8/image.png)

The installer should be installed to your downloads folder by default. From there you may have to change the permissions of the file to allow it to be executable. Run the following command to allow this:

```plain
sudo chmod +x Xilinx_Unified_2021.1_0610_2318_Lin64.bin
```

Then, from the terminal, run the installer with the following command:

```plain
./Xilinx_Unified_2021.1_0610_2318_Lin64.bin
```

Upon running the installer, an installer wizard will guide you through the installation process. This installer has the capabilites to install multiple different Xilinx suite tools at once. To reduce the number of times the installer is used, make sure to **choose both Vivado and Vitis** when the installer gives you the opportunity to choose which dependencies you want to install. The tools are very large in file size, so depending on your internet speed the download step could take multiple hours. Once the download and installation is done though, you'll have successfully installed Vivado and Vitis to your system. The next tool to install after this is Petalinux.

#### Petalinux

Before attempting to install Petalinux, first use your terminal run the following commands to acquire the necessary dependencies:

```plain
sudo apt-get -y install tofrodos \
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

sudo apt install python-minimal
sudo apt-get install -y xvfb
sudo apt-get install libsdl1.2-dev
sudo apt-get install libglib2.0-dev

chmod +x ppetalinux-v2021.1-final-installer.run
./petalinux-v2021.1-final-installer.run

sudo dpkg-reconfigure dash
```

With the necessary dependencies installed you can then run the Xilinx Unified Installer again (the same installer used in the previous step). This time while running it, **choose Petalinux** **only** when you get the option to choose which tools you want installed to your system.

## Xilinx Tool Suite - 2023.2

The process to download the 2023.2 suite is almost exactly the same as the 2021.1 tools. To install the 2023.2 version of the tools, go to AMD's site here: [https://www.xilinx.com/support/download.html](https://www.xilinx.com/support/download.html). Loading the site brings you to the latest version by default, which is currently 2023.2. If this has changed, you may have to go to the Vivado archive to find this version. This can be seen in the side-menu on the left side of the browser window near the top of the screen, and it looks like this:

![](https://t9014167360.p.clickup-attachments.com/t9014167360/1c020620-2758-4f37-82e5-1e4d1b3d4de8/image.png)

Once you're on the 2023.2 page, **choose the installer for Linux systems (.bin)**, it will likely look like this on their site:

![](https://t9014167360.p.clickup-attachments.com/t9014167360/7990d14e-f9d5-4e3c-9207-240277cf4449/image.png)

Just like with the 2021.1 tools, the installer should lie within your Downloads folder once it has completely downloaded. From there, change the permissions of the file to be executable with the `chmod` command. Run the installer and follow the installer wizard from there to install Petalinux, Vivado and Vitis. **Like with the 2021.1 tools, you may only be able to install some of the tools per installation attempt**, so start by downloading Vivado and Vitis. These will be large downloads (>100GB), just a heads up. Before installing Petalinux, run the following commands first and then run the installer again to install Petalinux. These are the same commands within the 2021.1 tools setup section, so if you've already installed these packages you can skip running these commands.

```plain
sudo apt-get -y install tofrodos \
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

sudo apt install python-minimal
sudo apt-get install -y xvfb
sudo apt-get install libsdl1.2-dev
sudo apt-get install libglib2.0-dev

chmod +x ppetalinux-v2021.1-final-installer.run
./petalinux-v2021.1-final-installer.run

sudo dpkg-reconfigure dash
```

## Wrapping Up

At this point you should have the initial dependencies install, the Xilinx v2021.1 tools, and the Xilinx 2023.2 tools installed on your system. If you've completed these steps you can move on to "RFLAN Documentation" to continue following our build process.