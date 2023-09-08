# [Objectives](https://xilinx.github.io/xup_compute_acceleration/Vitis_intro-1.html)

- [ ] Create a project using the Vitis GUI
- [ ] Run Software Emulation to verify the functionality of a design
- [ ] Run Hardware Emulation to verify the functionality of the generated hardware design
- [ ] Build the system and test it in hardware
- [ ] Perform profile and application timeline analysis in hardware emulation

# Step by Step

## 🌴 Create a Vitis Project
> Key Steps:
- [ ] Add `vadd.cpp`, `xcl2.cpp`, and `xcl2.hpp` into `vadd_system -> vadd -> Includes->src`
- [ ] Add `krnl_vadd.cpp` into `vadd_system -> vadd_kernels -> src`
- [ ] `Explorer view -> vadd_system -> vadd_kernels -> Hardware Kernel Project Settings -> Add Hardware Functions`

## 🌳 Build and Run Software Emulation

1. Select the `vadd_system` in `Explorer`
2. `**Emulation-SW**` on the upper right corner of `System Project Settings`
3. Select `vadd_system` in `Assistant` and click the hammer button to `**Build**`
4. Select `vadd_system` either in `Assistant` or in `Explorer`
5. Click on the `run button`, then select the `Launch SW Emulator` and click `OK` to `**Run**`


## 🍀 Build and Run Hardware Emulation

1. Select the `vadd_system` in `Explorer`
2. `**Emulation-HW**` on the upper right corner of `System Project Settings`
3. Select `vadd_system` in `Assistant` and click the hammer button to `**Build**`
4. Select `vadd_system` either in `Assistant` or in `Explorer`
5. Click on the `run button`, then select the `Launch HW Emulator` and click `OK` to `**Run**`

## 🌾 Run Hardware

> It may take 1-2 hours to build a hardware binary (*.xclbin). You can also skip this step by using a prebuilt binary.

> You can choose one of the following two methods to run hardware.

### Build Full Hardware

1. Select the `vadd_system` in `Explorer`
2. `**Hardware**` on the upper right corner of `System Project Settings`
3. Select `vadd_system -> vadd_system_hw_link -> Hardware -> binary_container_1` in `Assistant` and then click on `Settings`; Click on the `Data Transfer` drop-down button in binary_container_1 row and select `Counters+Trace` option, and enable `Execute Profiling`.  Finally, click `Apply and Close`.
4. Select `vadd_system` in `Assistant` and click the hammer button to `**Build**`. (Generate a `binary_container_1.xclbin` and executable file `vadd` application in the new built vadd/Hardware directory.)
5. Click on the `run button`, then select the `Launch Hardware` and click `OK` to `**Run**`

### Use a prebuilt binary
> Assume a prebuilt binary `binary_container_1.xclbin`
> 
> Copy the prebuilt solution files into current project. Please refer [HERE](https://xilinx.github.io/xup_compute_acceleration/Vitis_intro-2.html)



# References

- [ ] [xup_compute_acceleration](https://github.com/Xilinx/xup_compute_acceleration)



