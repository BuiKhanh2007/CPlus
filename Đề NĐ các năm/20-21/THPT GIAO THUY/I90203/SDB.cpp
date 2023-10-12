#include <bits/stdc++.h>
//NGUYENVANTHIEN
using namespace std;
ifstream fi ("SDB.INP");
ofstream fo ("SDB.OUT");
long long n,slxh=0,lonnhat=-1000000001;
long long a[1000001];
long long dem[100000001];

int main()
{
    fi>>n;
    for(int i=0;i<n;i++)
    {
        fi>>a[i];
        if(a[i]>lonnhat) lonnhat=a[i];
        dem[a[i]]++;
    }
    for(int i=1;i<=lonnhat;i++)
        if(dem[i]==1) slxh++;
    fo<<slxh<<endl;
    for(int i=1; i<=lonnhat;i++)
        if(dem[i]==1) fo<<i<<endl;

    return 0;
}
