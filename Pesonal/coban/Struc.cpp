#include <string>
#include <iostream>
using namespace std;
void inpit(int *n)
{
    cin>>*n;
}



int main()
{
    int a[4]={1,2,3,4};
    int n;
    inpit(&n);
    cout<<n;
    //cout<<"Gia tri vua nhap: ";
    return 0;
}
