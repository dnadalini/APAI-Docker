# Setup PULP-RISC-V-GCC-TOOLCHAIN
wget https://github.com/pulp-platform/pulp-riscv-gnu-toolchain/releases/download/v1.0.16/v1.0.16-pulp-riscv-gcc-ubuntu-18.tar.bz2
tar -xvf v1.0.16-pulp-riscv-gcc-ubuntu-18.tar.bz2 -C ./
mv v1.0.16-pulp-riscv-gcc-ubuntu-18 pulp-riscv-gcc-toolchain

# Build PULP-SDK
CURR_PATH=$(pwd)
USR_PATH=$(pwd)/pulp-riscv-gcc-toolchain
export PULP_RISCV_GCC_TOOLCHAIN=$USR_PATH
export PATH=$USR_PATH/bin:$PATH
source pulp-riscv-gcc-toolchain/sourceme.sh
source pulp-sdk/configs/pulp-open.sh
cd pulp-sdk/ 
git submodule update --init --recursive
make build
cd ..
