## A Simple example of shared and static compilations changed to find possible bug [(#172)](https://github.com/easylogging/easyloggingpp/issues/172)

```
.
├── compile_shared2.sh
├── compile_shared.sh
├── compile_static2.sh
├── compile_static.sh
├── lib
│   ├── include
│   │   ├── easylogging++.h
│   │   ├── mylib2.hpp
│   │   └── mylib.hpp
│   ├── mylib2.cpp
│   └── mylib.cpp
├── myapp2.cpp
├── myapp.cpp
└── README.md

2 directories, 12 files
```

Provided sample code was changed to show four possible situations:

1. two static libraries using easyloggingpp internally (compile using ./compile_static.sh)
2. two shared libraries using easyloggingpp internally (compile using ./compile_shared.sh and run using ./myapp)
3. static library and client both using easyloggingpp (compile using ./compile_static2.sh)
4. shared library and client both using easyloggingpp (compile using ./compile_shared2.sh and run using ./myapp2)
