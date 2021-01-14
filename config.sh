#!/usr/bin/env bash
# This configuration script exports necessary variables to start the IOC.

unset LD_LIBRARY_PATH
unset PYTHONPATH

# TOP refers to where `st.cmd` is.
export TOP="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# -- Installation --
# Local packages to install - add your list of submodules here.
#   A development install (i.e., `pip install -e`) will be used such that your
#   submodule version synchronization is the primary way to keep your package
#   up-to-date.
export PACKAGES=solid-attenuator

# Python version to use for the environment.
export PYTHON_VERSION=3.7

# -- Boot --
# Set IOC to your IOC name.  It affects where the log files go, too.
export IOC=ioc-lfe-at2l0-calc

# IOC startup command
export IOC_COMMAND="ioc-lfe-at2l0-calc --production"

# IOC PV prefix.
export PREFIX=AT2L0:CALC

# -- Paths and EPICS configuration --
export IOC_DATA_PATH=/reg/d/iocData/${IOC}
export CONDA_ENV_PATH="${TOP}/conda_env"

# EPICS address configuration may be necessary:
export EPICS_CA_AUTO_ADDR_LIST=NO
export EPICS_CA_ADDR_LIST=172.21.95.255

# If running with IocManager or procServ, independent log file saving will not
# be necessary.  Set this to 0 if using such a service, or 1 otherwise:
export CAPTURE_LOGS=0
export LOG_FILE_PATH=${IOC_DATA_PATH}/iocInfo/ioc.log
