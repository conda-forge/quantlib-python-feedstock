#!/bin/bash

./autogen.sh
./configure PYTHON CXXFLAGS='-O1'
make -C Python
make -C Python wheel
pip install Python/dist/*.whl

# testing
pushd Python
pytest
popd
