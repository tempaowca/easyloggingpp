#!/usr/bin/env bash
rm -rf myapp logs
rm -rf libmyLib.so lib/libmyLib.so lib/mylib.o lib/myLib.a myLib.a
rm -rf libmyLib2.so lib/libmyLib2.so lib/mylib2.o lib/myLib2.a myLib2.a

compiler=g++
standard=c++0x ## If this does not work try c++11 (depends on your compiler)
macros="-DELPP_THREAD_SAFE -DELPP_STACKTRACE_ON_CRASH"  ## Macros for library

cd lib/
$compiler --std=$standard -pipe -fPIC -g -O0 $macros -Iinclude  -c -o mylib.o mylib.cpp
ar rvs myLib.a mylib.o
cp myLib.a ..

$compiler --std=$standard -pipe -fPIC -g -O0 $macros -Iinclude  -c -o mylib2.o mylib2.cpp
ar rvs myLib2.a mylib2.o
cp myLib2.a ..

cd ..
$compiler -g -std=$standard -o myapp myapp.cpp -Ilib/include myLib.a myLib2.a
