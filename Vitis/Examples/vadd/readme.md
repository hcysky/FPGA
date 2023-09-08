# [Objectives](https://xilinx.github.io/xup_compute_acceleration/Vitis_intro-1.html)

- [ ] Create a project using the Vitis GUI
- [ ] Run Software Emulation to verify the functionality of a design
- [ ] Run Hardware Emulation to verify the functionality of the generated hardware design
- [ ] Build the system and test it in hardware
- [ ] Perform profile and application timeline analysis in hardware emulation

# 🍁 Build & Run（Step by Step）

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


# 🚔 Analyze Results（Step by Step）

## 🚗 View Emulation Timeline

> You can also replace `Emulation-SW` by `Emulation-HW ` or `Hardware`.

1. Select `vadd_system -> vadd -> Emulation-SW -> SystemDebugger_vadd_system_vadd` in `Assistant`, then double-click the `Run Summary(xclbin)` to open `Vitis Analyzer`
2. Vitis Analyzer shows `Summary, Run Guidance and Profile Summary` tabs on the left-hand side
3. Select `Profile Summary`. Select `Kernels & Compute Units` to see kernel and compute units execution times (Notice the reported times); Click `Host Data Transfer` to see read and write buffer sizes, buffer addresses, and the related execution parameters.
4. Select `File -> Exit` to close the Analyzer


## 🚕 Timeline Trace

> In order to `see` a Timeline Trace, you need to enable it in the `Run Configurations` settings.

1. Right click on `vadd_system` in `Assistant`, and select `Run -> Run Configurations`
2. Under the `Xilinx Runtime Profiling` section, click the Configuration `Edit…` button
3. Select the `OpenCL trace` option, click `OK` to save the change and click `Run`
4. Open the Vitis Analyzer by select `vadd_system -> vadd -> Emulation-SW -> SystemDebugger_vadd_system_vadd -> Run Summary(xclbin)`, and then select the `Timeline Trace`



# 🎈 [Improving Performance](https://xilinx.github.io/xup_compute_acceleration/Improving_Performance_lab.html)



# 🎈 [Optimization](https://xilinx.github.io/xup_compute_acceleration/Optimization_lab.html)


# 🎈 [Vision Lab](https://xilinx.github.io/xup_compute_acceleration/Vision_lab.html)


# 🎈 [Graph Lab](https://xilinx.github.io/xup_compute_acceleration/Graph_lab.html)




# References

- [ ] [xup_compute_acceleration](https://github.com/Xilinx/xup_compute_acceleration)



