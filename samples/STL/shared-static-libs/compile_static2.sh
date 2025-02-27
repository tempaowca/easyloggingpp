#!/usr/bin/env bash
rm -rf myapp2 logs
rm -rf libmyLib.so lib/libmyLib.so lib/mylib.o lib/myLib.a myLib.a

compiler=g++
standard=c++0x ## If this does not work try c++11 (depends on your compiler)
macros="-DELPP_THREAD_SAFE -DELPP_STACKTRACE_ON_CRASH"  ## Macros for library

cd lib/
$compiler --std=$standard -pipe -fPIC -g -O0 $macros -Iinclude  -c -o mylib.o mylib.cpp
ar rvs myLib.a mylib.o
cp myLib.a ..

cd ..
$compiler -g -std=$standard -o myapp2 myapp2.cpp -Ilib/include myLib.a
