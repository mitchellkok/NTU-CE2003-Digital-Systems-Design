#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2018.3 (64-bit)
#
# Filename    : simulate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for simulating the design by launching the simulator
#
# Generated by Vivado on Tue Apr 06 14:03:21 +08 2021
# SW Build 2405991 on Thu Dec  6 23:36:41 MST 2018
#
# Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
#
# usage: simulate.sh
#
# ****************************************************************************
ExecStep()
{
"$@"
RETVAL=$?
if [ $RETVAL -ne 0 ]
then
exit $RETVAL
fi
}
ExecStep xsim uP16_top_tb_time_synth -key {Post-Synthesis:sim_1:Timing:uP16_top_tb} -tclbatch uP16_top_tb.tcl -view /media/mitchellkok/OS/Users/mitch/Desktop/Y2S2/CE2003 Digital Systems Design/Lab 5/Lab5/lab5/uP16_top_tb_time_synth_1.wcfg -view /media/mitchellkok/OS/Users/mitch/Desktop/Y2S2/CE2003 Digital Systems Design/Lab 5/Lab5/lab5/uP16_top_tb_time_synth_2.wcfg -log simulate.log
