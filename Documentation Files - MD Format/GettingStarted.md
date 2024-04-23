# Getting Started

# Hardware Requirements for this Project

This project has required the building of hardware projects and Linux kernels, so having midrange to higher-end systems will improve efficiency when working with the tools of this project.

### Basic System Requirements

*   System capable of running Ubuntu 18.04.4 natively
*   CPU: Any CPU capable of running the operating system, but the newer and/or higher-end the CPU, the better
*   RAM: 32 GB recommended, 16 GB works though
*   Storage: 400 GB, SSD recommended for a more responsive operating system

### System Used for Building the Final Project Files

*   Operating System: Ubuntu 18.04.5
*   CPU: Ryzen 5 3600
*   Motherboard: MSI Pro B550M-VC Wifi
*   RAM: 16GB (Freq: 3000MHz, CAS Latency: 16-18-18-38)
*   Storage: 1TB Sabrent Rocket 4 NVMe SSD
*   GPU: Geforce GTX 1050 Ti 4GB

# Installing Ubuntu on Your Target System

This project requires working within an Ubuntu operating system. While we tried using Docker and using Virual Machines via VirtualBox, running Ubuntu natively on a system allowed for the most responsive experience. Given the operations being performed, VM's and Docker also had some limitations when it came to leveraging the available hardware on a system. For those who have not installed Ubuntu on a system before, this section will serve as a guide to do so.

#### 1) Installing the Ubuntu ISO

To install Ubuntu on your system, you first need a desktop image. By going to:

[old-releases.ubuntu.com/releases/18.04.4/](http://old-releases.ubuntu.com/releases/18.04.4/) you can install a number of different image versions depending on your target platform. As we were using amd64 x86 systems, we chose the ubuntu-18.04-desktop-amd64.iso file. Just a heads up, the download size is close to 2 GB, so the download can take a while depending on your internet speed.

#### 2) Formatting the Image as Bootable on a USB drive

Once the image is installed, you now have to make put the image on a USB drive and format it in a way that it's bootable by your target system. Next you'll need an image flashing tool. We used balenaEtcher for our project and recommend it as it's easy to use and it just works. To download balenaEtcher go to [etcher.balena.io](http://etcher.balena.io), click the "Download Etcher" button, and run the installer once the installer is downloaded.

When you're all done downloading and installing balenaEtcher, open the program. It'll have you start the flashing process by choosing either a file or a URL. If you downloaded the Ubuntu ISO in the previous step, you can choose "Flash from file" and find your Ubuntu ISO in the file explorer window that opens. Once you've selected your ISO file, you then choose your target drive. Here you will want to choose the USB drive that you want to put the bootable image on. After your target is selected, click "Flash!" to initiate the flash. When that's all done you have your bootable Ubuntu image!

#### 3) Using your Bootable USB Drive to Install Ubuntu on your Target System

At this point you should have your bootable USB drive with an Ubuntu image on it, as well as a target system that you intend to install Ubuntu on. To get started installing Ubuntu, you'll want to plug your bootable USB drive into one of the USB ports on your target system. If you already have a different operating system running on this machine, you'll also likely have to enter your system's UEFI/BIOS and change the boot ordering so that your USB drive with an Ubuntu image comes before your other partition(s) containing an installed operating system.

Once you boot up your system and you're in the Ubuntu desktop environment, you can run the installer that will install Ubuntu to your target system. Follow the installer program to install Ubuntu to your system. If you already have one or more operating systems running on your system, you will have to create a partition in the installation process on one of your drives for your eventual Ubuntu partition to reside. As stated in the system requirements, be sure to reside at least 400 GB on your system to have sufficient space for the tools required to set up the build environment. Once you've completed the installation process and rebooted your system, you're done! You've successfully installed Ubuntu on your target system and you can now get started with setting up the build environment.

# **Other Technologies We Used**

*   RealVNC
    *   Allows you to wirelessly connect to computers while you arent near them.
    *   Very useful for this project as we had very specific hardware requirements so this allowed us to use desktops to boot the build enviorment up and then connect to it with our laptops while on campus or vise versa.
*   Virtual Machine (virtual box)
    *   Allowed laptops that werent able to burn and boot up the operating system to play with Ubuntu 18.04.4 until hardware issue was resolved
    *   NOT RELIABLE FOR THE ACTUAL BUILD ENVIORMENT
*   Xilinx
*   Vivado
*   Vitis
*   ClickUp
    *   Software we used to document the project progress, errors, and technologies we used along the way.
*   PetaLinux
*   Balena Etcher
    *   Software used to burn Ubuntu image on to external hard drives or SSD drives so that we could boot it up on our laptops.
*   GitHub [https://github.com/NextGenRF-Design-Inc/bytepipe\_sdk](https://github.com/NextGenRF-Design-Inc/bytepipe_sdk)
    *   Used to follow instructions on how to install all build enviorment dependencies.
*   BytePipe HDK [https://www.nextgenrf.com/products/bytepipe-x9002-system-on-module/](https://www.nextgenrf.com/products/bytepipe-x9002-system-on-module/)
    *   Hardware that the project is targeted towards.