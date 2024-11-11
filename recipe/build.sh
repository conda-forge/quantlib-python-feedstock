#!/bin/bash

./autogen.sh
./configure PYTHON CXXFLAGS='-O1'
make -C Python
pushd Python
pytest
popd
make -C Python wheel
pip install Python/dist/QuantLib-*.whl
