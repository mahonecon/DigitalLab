@set XILINX=C:\Xilinx\14.2\ISE_DS\ISE
@set PATH=C:\Xilinx\14.2\ISE_DS\ISE\bin\nt64
@"C:\Xilinx\14.2\ISE_DS\ISE\bin\nt64\trce.exe" -v 3  -s 3  -n 3  -fastpaths "map.ncd" "finalFPGA.pcf" -o "finalFPGA_postmap.twr"
