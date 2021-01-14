#!/usr/bin/env bash

. config.sh

source /reg/g/pcds/pyps/conda/pcds_conda

run_ioc() {
    source "${TOP}/activate_env.sh"
    echo ""
    echo "* Running the IOC..."
    set -ex
    cd ${TOP}
    python --version
    ${IOC_COMMAND} --prefix "${PREFIX}" --list-pvs
}

(run_ioc 2>&1) | tee --append $LOG_FILE_PATH
