#include <bits/stdc++.h>
#include <map> 
using namespace std;
int Sum(int a)
{
    int sum=0,i=8;
    for (int i=1;(i<=a && a>0);i++)
    {
        sum+= a%10 * i;
        a/=10;
    }
    cout<<sum<<" ";
    return sum;
}
int du(int a)
{
    while(a>10)
    {
        a=a/9;
    }
    return a;
}
int main()
{
    int n;
    cin>>n;
    map<int, char> khanh = {{0, 'A'}, {1, 'B'}, {2, 'C'}, {3, 'D'}, {4, 'E'}, {5, 'F'}, {6, 'G'}, {7, 'H'}, {8, 'I'}};

    cout<<khanh[du(Sum(n))]; 
    return 0000000000;
}
