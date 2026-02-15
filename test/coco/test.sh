#!/bin/bash
cd $(dirname "$0")
source test-utils.sh

# Template specific tests
check "distro" lsb_release -c
check "uv" which uv
check "wasmer" which wasmer
check "wasmtime" which wasmtime
check "wasmedge" which wasmedge

# Report result
reportResults
