#!/usr/bin/env bash
# This configuration script exports necessary variables to start the IOC.

unset LD_LIBRARY_PATH
unset PYTHONPATH

# TOP refers to where `st.cmd` is.
export TOP="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# -- Installation --
# Local packages to install - add your list of submodules here.
export PACKAGES=solid-attenuator

# Python version to use for the environment.
export PYTHON_VERSION=3.7

# -- Boot --
# Set IOC to your IOC name.  It affects where the log files go, too.
export IOC=ioc-lfe-at2l0-calc

# IOC startup command
export IOC_COMMAND=ioc-lfe-at2l0-calc

# IOC PV prefix.
export PREFIX=IOC:

# -- Paths and EPICS configuration --
export IOC_DATA_PATH=/reg/d/iocData/${IOC}
export LOG_FILE_PATH=${IOC_DATA_PATH}/ioc.log
export CONDA_ENV_PATH="${TOP}/conda_env"

# EPICS address configuration may be necessary:
export EPICS_CA_AUTO_ADDR_LIST=NO
export EPICS_CA_ADDR_LIST=172.21.95.255
