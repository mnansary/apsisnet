#!/bin/sh

    if [ $1 == "gpu" ]; then    # GPU installation
    echo "Installing GPU-specific packages"
    conda install cudatoolkit
    conda install cudnn
    # exporting environment variables
    mkdir -p $CONDA_PREFIX/etc/conda/activate.d
    5echo 'export LD_LIBRARY_PATH=$CUDNN_PATH/lib:$CONDA_PREFIX/lib/:$LD_LIBRARY_PATH' >> $CONDA_PREFIX/etc/conda/activate.d/env_vars.sh
else
    echo "Installing CPU-specific packages"
    # CPU installation
    # for recognizer
    
fi
pip install .

