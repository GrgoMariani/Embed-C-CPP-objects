#include <iostream>
#include <string>
#include <cstddef>

extern const char  e_obj[];
extern const size_t e_obj_size;


int main(){
    std::string stext(e_obj, e_obj_size);
    std::cout << "START:" << std::endl;
    std::cout << stext << std::endl;
    std::cout << std::endl;
    std::cout << "SIZE: " << e_obj_size << std::endl;
    return 0;
}