@echo off
set xv_path=D:\\xlinix\\Vivado\\2016.4\\bin
call %xv_path%/xsim ALU16_TB_behav -key {Behavioral:sim_1:Functional:ALU16_TB} -tclbatch ALU16_TB.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
