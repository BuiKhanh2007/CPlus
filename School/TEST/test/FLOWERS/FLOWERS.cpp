#include <bits/stdc++.h>
#define NAME "flowers."
using namespace std;
ifstream fi (NAME"inp");
ofstream fo (NAME"out");
int n,a[200003],ib,ie,lb,le,lx=0,ixb,ixe,t;
void next3()
{
    le=0;
    ie=n;
    for(int i=ib+lb; i<=n; ++i)
        if(a[i]==a[i+1]&&a[i]==a[i+2])
        {
            ie=i;
            le=3;
            while(a[i+le]==a[i])++le;
            break;
        }
}
int main()
{
    fi>>n;
    for(int i=1; i<=n; ++i)fi>>a[i];
    a[n+1]=-1;
    a[n+2]=-2;
    ib=1;
    lb=0;
    next3();
    ib=ie;
    lb=le;
    ixb=1;
    lx=ib+1;
    if(lx>n)
    {
        lx=n;
        fo<<n - ixb + 1;
        return 0;
    }
    while(lb)
    {
        next3();
        if(le==0)t=n-ib-lb+3;
        else t=ie-ib-lb+5;
        if(t>lx)
        {
            lx=t;
            ixb=ib+lb-2;
            if(le==0)ixe=n;
            else ixe=ie+1;
        }
        if(ie==n)break;
        ib=ie;
        lb=le;
    }
    fo<<ixe - ixb + 1;
}
