#include <bits/stdc++.h>
//HoangQuocChung
using namespace std;
ifstream fi ("GHH.INP");
ofstream fo ("GHH.OUT");
long long a,dem,n,b[10000],pt=0;
bool ghh(long long n)
{
    bool ok=true;
    long long tong=0;
    long long a[100000];
    long long spt=0;
    a[0]=n;
    for (int i=1;i<=n/2;i++)
        if (n%i==0)
    {
        spt++;
        a[spt]=i;
    }
    for (int j=0;j<=spt;j++)
        tong=tong+a[j];
    if (2*n>tong)

    ok=false;
    return ok;
}

int main()
{
    fi>>n;
    for (int i=1;i<=n;i++)
    {
        fi>>a;
        if(ghh(a)==true)
            {
                pt++;
                b[pt]=a;
                dem++;
            }
    }
    fo<<dem<<endl;
    for (int i=1;i<=pt;i++)
        fo<<b[i]<<endl;


    return 0;
}
