# [Objectives](https://xilinx.github.io/xup_compute_acceleration/Vitis_intro-1.html)

- [ ] Create a project using the Vitis GUI
- [ ] Run Software Emulation to verify the functionality of a design
- [ ] Run Hardware Emulation to verify the functionality of the generated hardware design
- [ ] Build the system and test it in hardware
- [ ] Perform profile and application timeline analysis in hardware emulation

# Step by Step

## Create a Vitis Project
> Key Steps:
- [ ] Add `vadd.cpp`, `xcl2.cpp`, and `xcl2.hpp` into `vadd_system -> vadd -> Includes->src`
- [ ] Add `krnl_vadd.cpp` into `vadd_system -> vadd_kernels -> src`
- [ ] `Explorer view -> vadd_system -> vadd_kernels -> Hardware Kernel Project Settings -> Add Hardware Functions`

## Build and Run Software Emulation

1. Select the `vadd_system` in `Explorer`
2. `**Emulation-SW**` on the upper right corner of `System Project Settings`
3. Select `vadd_system` in `Explorer` and click the hammer button to `**Build**`
4. Select `vadd_system` either in `Assistant` or in `Explorer`
5. Click on the `run button`, then select the `Launch SW Emulator` and click `OK` to `**Run**`


## 🍀 Build and Run Hardware Emulation

1. Select the `vadd_system` in `Explorer`
2. `**Emulation-HW**` on the upper right corner of `System Project Settings`
3. Select `vadd_system` in `Explorer` and click the hammer button to `**Build**`
4. Select `vadd_system` either in `Assistant` or in `Explorer`
5. Click on the `run button`, then select the `Launch HW Emulator` and click `OK` to `**Run**`










# References

- [ ] [xup_compute_acceleration](https://github.com/Xilinx/xup_compute_acceleration)



