#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2018.3 (64-bit)
#
# Filename    : simulate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for simulating the design by launching the simulator
#
# Generated by Vivado on Wed Mar 10 10:34:14 +08 2021
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
ExecStep xsim AM_top_tb_behav -key {Behavioral:sim_1:Functional:AM_top_tb} -tclbatch AM_top_tb.tcl -view /media/mitchellkok/OS/Users/mitch/Desktop/Y2S2/CE2003 Digital Systems Design/Lab 3/project_1/AM_top_tb_behav.wcfg -log simulate.log