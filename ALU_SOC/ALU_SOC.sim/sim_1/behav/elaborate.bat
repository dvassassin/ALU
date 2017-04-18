@echo off
set xv_path=D:\\xlinix\\Vivado\\2016.4\\bin
call %xv_path%/xelab  -wto 0a7f293d9c624642a394214c993ca784 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot ALU16_TB_behav xil_defaultlib.ALU16_TB -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
