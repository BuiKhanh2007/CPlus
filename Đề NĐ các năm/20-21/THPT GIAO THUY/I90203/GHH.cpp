#include <bits/stdc++.h>
//NGUYENVANTHIEN
using namespace std;
ifstream fi("GHH.INP");
ofstream fo("GHH.OUT");
long long n,x;
long long dem=0;
long long a[10001];
long long tonguoc(long long n)
{
    long long tong=0;
    for(int i=1;i<=sqrt(n);i++)
        if(n%i==0 )
            if(i!=n/i)
                tong=tong+i+n/i;
        else tong=tong+i;
    return tong;
}
int main()

{
    fi>>n;
    for(int i=0;i<n;i++)
    {
        fi>>x;
        if(2*x<=tonguoc(x))
        {
            dem++;
            a[dem]=x;
        }
    }
    fo<<dem<<endl;
    for(int i=1;i<=dem;i++) fo<<a[i]<<endl;

return 0;
}
