#include <mylib.hpp>

#include "easylogging++.h"

INITIALIZE_EASYLOGGINGPP

int main(int argc, char** argv) {
    LOG(INFO) << "---main start---";

    MyLib lib(argc, argv);
    lib.event(1);

    LOG(INFO) << "---main end---";

    return 0;
}
