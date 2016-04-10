cd liberamox
mkdir build
cd build
echo "Running cmake with following parameters: "$1
cmake $1 ..
cmake --build .
# >(tee liberamox_ok.log) 2> >(tee liberamox_err.log >&2)
echo "Build finished"
