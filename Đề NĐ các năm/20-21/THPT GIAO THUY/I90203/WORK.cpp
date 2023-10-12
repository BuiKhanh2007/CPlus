#include <bits/stdc++.h>
//NGUYENVANTHIEN
using namespace std;
ifstream fi("WORK.INP");
ofstream fo("WORK.OUT");
long long n,tong=0;
long long t[1000001];
long long b[1000001];
int main()
{
    fi>>n;
    for(int i=1; i<=n;i++) fi>>t[i];
    for(int i=1; i<=n-1;i++) fi>>b[i];

    if(n%2!=0)
    {
        for(int i=1;i<n;i=i+2)
            tong=tong+b[i];
        fo<<tong+t[n];
    }

    else
        {
        for(int i=1; i<n;i=i+2)
            tong=tong+b[i];
        fo<<tong;
        }
    return 0;
}
