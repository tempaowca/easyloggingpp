#include <mylib.hpp>
#include <mylib2.hpp>

int main(int argc, char** argv) {
    MyLib lib(argc, argv);
    lib.event(1);

    MyLib2 lib2(argc, argv);
    lib2.event(1);

    return 0;
}
