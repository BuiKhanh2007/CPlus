#include <iostream>
using namespace std;
int fabonaci(int n)
{
    int a[n];
    for(int i=0;i<n;i++)
    {
        a[i]=a[i-1]+a[i-2];
    }
    return a[n-1];

}
int main()
{
    cout<<fabonaci(2);
    return 0;
}
