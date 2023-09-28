
> Ubuntu 20.06, Vitis 2022.1, Alveo U50

# Vitis 2022.1

> Step 1 – Review the Installation Requirements

Prior to starting the installation process, make sure to check the [Vitis installation requirements](https://docs.xilinx.com/r/2022.1-English/ug1393-vitis-application-acceleration/Installation-Requirements).

![image](https://github.com/hcysky/FPGA/assets/64795241/210c27fa-fa1e-4f57-92f2-422a4d6902db)


> Step 2 – Download Vitis

Download the latest version of the Vitis from the [Xilinx download website](https://www.xilinx.com/support/download/index.html/content/xilinx/en/downloadNav/vitis/2022-1.html).

![image](https://github.com/hcysky/FPGA/assets/64795241/b095ab7b-820e-4b5a-a49e-3ddd13e5c275)

![image](https://github.com/hcysky/FPGA/assets/64795241/3123b55b-fb55-4f74-9aba-49d5384862aa)

-----------
> Step 3 – Install Downloaded Packages

After downloading the Vitis, XRT and platform packages, install them in the following order and according to the provided instructions:

1.[Install the Vitis Software Platform](https://docs.xilinx.com/r/2022.1-English/ug1393-vitis-application-acceleration/Installing-the-Vitis-Software-Platform)

2.[Install the Xilinx Runtime and Platforms](https://docs.xilinx.com/r/2022.1-English/ug1393-vitis-application-acceleration/Installing-the-Vitis-Software-Platform)

![image](https://github.com/hcysky/FPGA/assets/64795241/e299d3f8-4a17-4a65-b5e7-5c24ce499c85)

> Install XRT

![image](https://github.com/hcysky/FPGA/assets/64795241/562a92d5-4af2-471d-973b-ec5cbf4a0068)

```bash
$ sudo apt install ./xrt_202210.2.13.466_20.04-amd64-xrt.deb
```

> Install Paltforms
![image](https://github.com/hcysky/FPGA/assets/64795241/42fd2ccd-1bdb-4e1b-a5c6-2cf5f829d399)

```bash
$ tar -zxvf xilinx-u50-gen3x16-xdma_2022.1_2022_0415_2123-all.deb.tar.gz
$ cd xilinx-u50-gen3x16-xdma_2022.1_2022_0415_2123-all
$ sudo apt install ./*.deb
```


- [ ] Generate "xilinx_u50_gen3x16_xdma_5_202210_1.xpfm" at "/opt/xilinx/platforms/xilinx_u50_gen3x16_xdma_5_202210_1"


![image](https://github.com/hcysky/FPGA/assets/64795241/1087eaa0-142a-46ea-a556-1be642842ad0)

```bash
$ sudo apt install ./xilinx-u50-gen3x16-xdma-5-202210-1-dev_1-3499627_all.deb
```


---------------
> Step 4 – Download and Install the Required Platform files

> Step 4A - Installing Data Center Platform Files

Xilinx provides base platforms for the Alveo U200, U250, U50 and U280 data-center acceleration cards. Before installing a platform, you need to download the following packages:

1.Xilinx Runtime (XRT)
2.Deployment Target Platform
3.Development Target Platform

The packages required for each platform can be found on the corresponding download pages:

- [ ] [U50](https://www.xilinx.com/products/boards-and-kits/alveo/u50.html#gettingStarted)

![image](https://github.com/hcysky/FPGA/assets/64795241/f4df5ff4-40c0-4a86-92ab-87e506e182ed)


[U250](https://www.xilinx.com/products/boards-and-kits/alveo/u250.html#gettingStarted)

![image](https://github.com/hcysky/FPGA/assets/64795241/5b8a104d-f266-448b-ad94-ff0b6265e788)


> Step 4B - Installing Embedded Processor Platform Files

Xilinx provides base platforms for the ZCU102 and ZCU104 cards. Before installing a platform, you need to download the following packages:

1.Base platform
2.Common image

> Step 5 – Setup the environment to run Vitis

To configure the environment to run Vitis, run the following script which sets up the environment to run in a specific command shell.

```bash
source <Vitis_install_path>/Vitis/2022.1/settings64.sh
```

To configure XRT for Alveo Data Center accelerator cards run the following script. This is not required for Embedded platforms.
```bash
source /opt/xilinx/xrt/setup.sh
```

To specify the location of any Data-Center or Embedded platforms you have installed, set the following environment variable:
```bash
export PLATFORM_REPO_PATHS=<path to platforms>
```


> References
[Vitis Getting Started Tutorial](https://xilinx.github.io/Vitis-Tutorials/2022-1/build/html/docs/Getting_Started/Vitis/Part2.html)
