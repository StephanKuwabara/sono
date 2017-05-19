#!/bin/sh

if [[ -f build/CMakeCache.txt ]]; then
	echo "Cleaning Sono Lib..."
	rm -rf build/*
	rm -rf bin
	echo "Done."
fi

echo "Building Sono Lib..."
cd build
cmake -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=Debug ../
make
make install
cd ..
echo "Done."
