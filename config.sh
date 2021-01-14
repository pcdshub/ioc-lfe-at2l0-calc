#!/usr/bin/env bash

unset LD_LIBRARY_PATH
unset PYTHONPATH

# TOP refers to where `st.cmd` is.
export TOP="$(dirname "$0")"

# Set IOC to your IOC name.  It affects where the log files go, too.
export IOC=ioc-lfe-at2l0-calc

# Local packages to install - add your list of submodules here.
export PACKAGES=solid-attenuator

# Python version to use for the environment.
export PYTHON_VERSION=3.7

# IOC PV prefix.
export PREFIX=IOC:

# Relevant paths:
export IOC_DATA_PATH=/reg/d/iocData/${IOC}
export LOG_FILE_PATH=${IOC_DATA_PATH}/ioc.log
export CONDA_ENV_PATH=$PWD/conda_env

# EPICS address configuration may be necessary:
export EPICS_CA_AUTO_ADDR_LIST=NO
export EPICS_CA_ADDR_LIST=172.21.95.255

# IOC startup command
export IOC_COMMAND=ioc-lfe-at2l0-calc
