#include <bits/stdc++.h>
//HOANGSONLAM
using namespace std;
ifstream fi("SDB.INP");
ofstream fo("SDB.OUT");
int a[100000001],a1[100000001];
long long n,c[1000001],b[1000001];
int main()
{
    fi>>n;
    long long x,dem=0,t=0;
    for(long long i=0;i<n;i++)
    {
        fi>>b[i];
        if(b[i]>0)
        a[b[i]]++;
        else
        {
            t=fabs(b[i]);
            a1[t]++;
        }
    }
    for(long long i=0;i<n;i++)
    {
        t=fabs(b[i]);
        if(a[b[i]]==1 || a1[t]==1)
    {
        dem++;
        c[dem]=b[i];
    }
    }
    fo<<dem<<endl;
    for(long long i=1;i<=dem;i++)
        fo<<c[i]<<endl;
    //cout << "Hello world!" << endl;
    return 0;
}
