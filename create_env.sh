#!/bin/bash

. config.sh

conda create -p "$PWD/conda_env" python=${PYTHON_VERSION}
conda activate "$PWD/conda_env"

for pkg in ${PACKAGES}; do
    pushd "$pkg" || exit 1
    pip install .
    popd || exit 1
done
