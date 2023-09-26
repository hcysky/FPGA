

# FPGA Architecture

> Generally, it is not necessary to understand all of the nitty-gritty details of the FPGA architecture in order to successfully use the HLS tools, rather it is more important to have a general understanding of the various FPGA resources and how the HLS optimizations effect the resource usage.

FPGAs are an array of programmable **logic blocks** and **memory elements** that are connected together using programmable interconnect. Typically these logic blocks are implemented as a lookup table (LUT) – a memory where the address signal are the inputs and the outputs are stored in the memory entries. An n-bit LUT can be programmed to compute any n-input Boolean function by using the function’s truth table as the values of the LUT memory.


![image](https://github.com/hcysky/FPGA/assets/64795241/b94217d0-da56-4eb3-a5c3-ddec7ed7d2a9)


> Note: We can program the 2 input LUT to be a 2 input AND gate (or OR, XOR gate).

![image](https://github.com/hcysky/FPGA/assets/64795241/0c3553eb-6fba-49c8-902a-a4bb89a0753e)

![image](https://github.com/hcysky/FPGA/assets/64795241/4431bebb-318c-466a-bf87-535b21501222)

Figure 1.1 a) shows a 2 input LUT. It has $2^2 = 4$ configuration bits. These bits are the ones that
are programmed to determine the functionality of the LUT. Figure 1.1 b) shows the truth table
for a 2 input AND gate. By using the four values in the “out” column for configuration bits 0-3,
we can program this 2 input LUT to be a 2 input AND gate. The functionality is easily changed
by reprogramming the configuration bits. This is a flexible and fairly efficient method for encoding
smaller Boolean logic functions. Most FPGAs use a LUTs with 4-6 input bits as their base element
for computation. Larger FPGAs can have millions of these programmable logic elements.

The FF is the basic memory element for the FPGA. They are typically co-located with a LUTs. LUTs can be replicated and combined with FFs and other specialized functions (e.g., a full adder) to create a more complex logic element called a **configurable logic block (CLB)**, **logic array block (LAB)**, or **slice** depending on the vendor or design tool. The exact number and combination of LUTs, FFs and multiplexers varies by architecture, but generally a slice has only few of each of these elements. Figure 1.1 c) shows a very simple slice with one 3-LUT and one FF.

![image](https://github.com/hcysky/FPGA/assets/64795241/e12d71df-9df5-4e9b-94ca-18e9eaf8a25f)

Figure 1.3 provides an even more abstract depiction of an FPGA programmable logic and interconnect. This provides a larger view of the 2D dimensional layout of the programmable logic (e.g., slices), routing channels, and switchboxes. The FPGA programmable logic uses I/O blocks to communicate with an external device.


![image](https://github.com/hcysky/FPGA/assets/64795241/eabb76f4-7bce-4525-9177-88cc3d80c378)

A block RAM (BRAM) is another example of a hardened resource. BRAMs are configurable random access memory modules that support different memory layouts and interfaces. For example, they can be changed to have byte, half-word, word, and double word transfers and connected to a variety of different interfaces including local on-chip buses (for talking to the programmable fabric) and processor buses (to communicate with on-chip processors). Generally, these are used to transfer data between on-chip resources (e.g., the FPGA fabric and microprocessor) and store large data sets on chip. We could choose to store the data set in the slices (using the FFs) but this would incur overheads in performance and resource usage.

![image](https://github.com/hcysky/FPGA/assets/64795241/a376627b-41a8-475a-bf64-ae4282c1888c)



--------------

![image](https://github.com/hcysky/FPGA/assets/64795241/1b81abc1-c1f1-46e8-8181-68661483960a)

![image](https://github.com/hcysky/FPGA/assets/64795241/178ab2df-7da7-4cc0-b798-353297f714ad)

![image](https://github.com/hcysky/FPGA/assets/64795241/6d20f5e9-ed1b-4239-95dc-665ecc0ae822)

![image](https://github.com/hcysky/FPGA/assets/64795241/3f68ebbf-c3ab-4004-9283-e20bb3e91ee4)

![image](https://github.com/hcysky/FPGA/assets/64795241/05fce0fe-012d-4859-b28d-683e27dcf470)






# References

- [ ] [Ryan Kastner, Janarbek Matai, and Stephen Neuendorffer, Parallel Programming for FPGAs, arXiv, 2018.](https://github.com/hcysky/FPGA/blob/master/Vitis/Documents/ECE%206775-High-Level%20Digital%20Design%20Automation-Fall%202023/Parallel%20Programming%20for%20FPGAs.pdf)



