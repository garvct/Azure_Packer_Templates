#!/bin/bash
set -ex

# install utils
/tmp/install_utils.sh

# install mellanox ofed
/tmp/install_mellanoxofed.sh

# optimizations
/tmp/hpc-tuning.sh
