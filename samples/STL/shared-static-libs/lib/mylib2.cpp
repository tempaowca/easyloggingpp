#include "mylib2.hpp"
#include "easylogging++.h"

INITIALIZE_EASYLOGGINGPP

MyLib2::MyLib2() {
    LOG(INFO) << "---MyLib2 Constructor () ---";
}

MyLib2::MyLib2(int argc, char** argv) {
    START_EASYLOGGINGPP(argc, argv);
    LOG(INFO) << "---MyLib2 Constructor(int, char**) ---";
}

MyLib2::~MyLib2() {
    LOG(INFO) << "---MyLib2 Destructor---";
}


void MyLib2::event(int a) {
    VLOG(1) << "MyLib2::event start";
    LOG(INFO) << "Processing event [" << a << "]";
    VLOG(1) << "MyLib2::event end";
}
