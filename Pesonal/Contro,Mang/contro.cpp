#include <iostream>
using namespace std;

int main()
{
    int i,*p;
    p = &i;
    i = 10;
    cout<<*p<<" "<<i;
    return 0;
}