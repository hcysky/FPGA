

# FPGA Architecture

FPGAs are an array of programmable **logic blocks** and **memory elements** that are connected together using programmable interconnect. Typically these logic blocks are implemented as a lookup table (LUT) – a memory where the address signal are the inputs and the outputs are stored in the memory entries. An n-bit LUT can be programmed to compute any n-input Boolean function by using the function’s truth table as the values of the LUT memory.


![image](https://github.com/hcysky/FPGA/assets/64795241/8db5e928-ee5a-404e-af27-1fedc3751e72)

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

The FF is the basic memory element for the FPGA. They are typically co-located with a LUTs. LUTs can be replicated and combined with FFs and other specialized functions (e.g., a full adder) to create a more complex logic element called a **configurable logic block (CLB)**, **logic array block (LAB)**, or **slice** depending on the vendor or design tool.





# References

- [ ] [Ryan Kastner, Janarbek Matai, and Stephen Neuendorffer, Parallel Programming for FPGAs, arXiv, 2018.](./Documents/Parallel Programming for FPGAs.pdf)



