#include <iostream>
#include <cstdio>
#include <string>
void mahoa(const char* folderPath)
{
    FILE *file = fopen(folderPath,"w");

}
int main() {
    char* path;
    while (true)
    {
        std::cout<<"Nhập Folder Cần Mã Hóa(Mặc Định Chính Là Thư Mục Chứa File EXE Này): ";
        std::cin>>path;
        const char* folderPath = path;
        mahoa(folderPath);
    }
    return 0;
}
