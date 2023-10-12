#include <bits/stdc++.h>
//NGUYENVANTHIEN
using namespace std;
ifstream fi ("TROCHOI.INP");
ofstream fo ("TROCHOI.OUT");
long long n,dem=0,vitri=0;
string s,s1[10001];
long long a[10001];
long long b[10001];
int main()
{
    fi>>n;
    getline(fi,s);
    for(int i=0;i<n;i++)
    {
        getline(fi,s);
        s1[i]=s;
        a[i]=s.length();
    }
       for(int i=0; i<n-1;i++)
        for(int j=i+1; j<n;j++)
       if(a[i]>=a[j])
       {
           swap(a[i],a[j]);
           swap(s1[i],s1[j]);
       }

    for(int i=0; i<n;i++) fo<<s1[i]<<endl;


    return 0;
}
