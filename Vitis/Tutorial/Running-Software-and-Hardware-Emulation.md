

# 1 Running Software Emulation

1.1 Ensure the software and hardware have been built with build_target set to `sw_emu`.


1.2 Generate the emulation configuration file

- [ ] The generated emconfig.json file must be in the same directory as the host executable; ensure you are in the same directory as the host executable, then run the following command.
- [ ] The platform_target is xilinx_u50_gen3x16_xdma_5_202210_1. It must match that platform_target used during the software and hardware build process.

```
emconfigutil --platform xilinx_u50_gen3x16_xdma_5_202210_1
```

1.3 Set the XCL_EMULATION_MODE environment variable to `sw_emu` to run in software emulation.

```
export XCL_EMULATION_MODE=sw_emu
```

1.4 With the configuration file `emconfig.json` generated and XCL_EMULATION_MODE set, use the following command to execute the host program and kernel in software emulation mode.

```
./host mmult.sw_emu.xilinx_u50_gen3x16_xdma_5_202210_1.xclbin
```

# 2 Running Hardware Emulation

2.1 Ensure the software and hardware have been built with build_target set to `hw_emu`

2.2 Generate the emulation configuration file

- [ ] NOTE: This step can be omitted if the file was already generated in the "Running Software Emulation" section.
- [ ] The generated emconfig.json file must be in the same directory as the host executable, so ensure you are in the same directory as the host executable, then run the following command.
- [ ] Here, the platform_target is xilinx_u50_gen3x16_xdma_5_202210_1. It must match that platform_target used during the software and hardware build process.

```
emconfigutil --platform xilinx_u50_gen3x16_xdma_5_202210_1
```

2.3 Set the XCL_EMULATION_MODE environment variable to `hw_emu` to run in hardware emulation

```
export XCL_EMULATION_MODE=hw_emu
```

2.4 With the configuration file `emconfig.json` generated and XCL_EMULATION_MODE variable set, use the following command to execute the host program and kernel in hardware emulation mode

```
./host mmult.hw_emu.xilinx_u200_xdma_201830_1.xclbin
```


# References

[Essential Concepts for Building and Running the Accelerated Application](https://github.com/Xilinx/SDAccel-Tutorials/blob/master/docs/Pathway3/Emulation.md)
