
> References

- [ ] [Get Moving with Alveo: Acceleration Basics](https://www.xilinx.com/developer/articles/acceleration-basics.html)
- [ ] [Alveo 加速卡开发白皮书 (UG1352)](https://docs.xilinx.com/v/u/zh-CN/ug1352-get-moving-with-alveo)
- [ ] [GitHub code](https://github.com/Xilinx/Get_Moving_With_Alveo/tree/master):
  - [ ] 硬件设计设置: 构建过程将会花费一定时间，最终将在hw_src目录里产生名为 alveo_examples.xclbin 的文件。该文件内部包含所有在这次练习过程中将使用到的内核。
  - [ ] 构建软件设计方案: 为避开系统特有的相依关系，在这些示例中，我们将使用 CMake 构建所有测试应用。所有示例专用代码均保存在sw_src 目录下。每个源文件都根据它所对应的示例命名：例如，00_load_kernels.cpp 对应于示例 0。还有一些附加的“辅助”文件在应用之间共享，并被编译到它们自己的库中。

![image](https://github.com/hcysky/FPGA/assets/64795241/2ef6ead2-b790-49f0-ab5b-af6c4ba53a5c)

![image](https://github.com/hcysky/FPGA/assets/64795241/84e33595-9ebb-4c7a-9f25-e8343c4dc894)


-------
> 运行时软件(XRT)

![image](https://github.com/hcysky/FPGA/assets/64795241/d28f55b1-6ea6-4bff-8a5d-613a29dc91e6)

![image](https://github.com/hcysky/FPGA/assets/64795241/99da1c86-171e-48a7-b11b-eb68c6ae6bf7)


------

> **要在 Alveo 卡上运行任务，必须要做四件事情**：
1. 分配和填充用于收发卡数据的缓存。
2. 在主机内存空间和 Alveo 全局内存间传输缓冲器。
3. 运行内核以操作这些缓存。
4. 将内核运算的结果传输回主机内存空间，以便处理器访问。












