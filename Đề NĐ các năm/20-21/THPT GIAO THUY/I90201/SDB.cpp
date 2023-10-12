#include <bits/stdc++.h>
//HoangQuocChung
using namespace std;
ifstream fi ("SDB.INP");
ofstream fo ("SDB.OUT");
long long n,a[1000001],b[1000001],spt=0;
long long dem[242000000];
int main()
{
    fi>>n;
    for (int i=0;i<n;i++)
    {
        fi>>a[i];
        dem[a[i]]++;
    }
    for (int i=0;i<n;i++)
        if (dem[a[i]]==1)
    {
        spt++;
        b[spt]=a[i];
    }
    fo<<spt<<endl;
    for (int i=1;i<=spt;i++)
        fo<<b[i]<<endl;


    return 0;
}
