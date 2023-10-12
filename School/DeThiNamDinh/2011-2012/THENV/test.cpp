
#include <bits/stdc++.h>
#include <map> 
using namespace std;
int Sum(int &a)
{
    int sum=0;
    for (int i=1;i>=a;i++)
    {
        sum+=a%10*i;
        a=a/10;
    }
    cout<<sum<<" ";
    return sum;
}
int main()
{
    int k=999;
    cout<<k/10;
    return 0000000000;
}
