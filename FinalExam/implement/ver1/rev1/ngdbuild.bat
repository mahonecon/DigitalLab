@set XILINX=C:\Xilinx\14.2\ISE_DS\ISE
@set PATH=C:\Xilinx\14.2\ISE_DS\ISE\bin\nt64
@"C:\Xilinx\14.2\ISE_DS\ISE\bin\nt64\ngdbuild.exe" -p 7A100TCSG324-3   -sd "c:\My_Designs\F2017_Mahoney\FinalExam\synthesis" -sd "c:\My_Designs\F2017_Mahoney\FinalExam\compile" -sd "c:\My_Designs\F2017_Mahoney\FinalExam\src" -sd "C:\Aldec\Active-HDL 9.3\vlib\ARTIX7\compile" -uc "finalFPGA.ucf" "finalFPGA.ngc" "finalFPGA.ngd"
