set XILINX=C:\Xilinx\14.2\ISE_DS\ISE
call "C:\Xilinx\14.2\ISE_DS\ISE\bin\nt64\xst.exe" -ifn UpDwnCounter.xst >> synthesis.dfml
call "C:\Xilinx\14.2\ISE_DS\ISE\bin\nt64\netgen.exe" -ofmt vhdl -intstyle silent -w UpDwnCounter.ngc  UpDwnCounter.vhd >> synthesis.dfml
