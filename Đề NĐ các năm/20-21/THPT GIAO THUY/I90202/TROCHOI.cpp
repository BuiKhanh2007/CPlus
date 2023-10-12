#include <bits/stdc++.h>

using namespace std;
ifstream fi("TROCHOI.INP");
ofstream fo("TROCHOI.OUT");
long long n,a[10001];
string s,s1[10001];
int main()
{
    fi>>n;
    getline(fi,s);
    long long dem=0;
    for(long long i=0;i<n;i++)
    {
        getline(fi,s);s1[i]=s;
        dem=0;
        for(long long j=0;j<s.length();j++)
            if(int(s[j])>=48 && int(s[j]) <= 57)
                dem++;
                  a[i]=dem;
    }
    for(long long i=0;i<n-1;i++)
    for(long long j=i+1;j<n;j++)
    if(a[i]>a[j])
    {
        swap(a[i],a[j]);
        swap(s1[i],s1[j]);
    }
    for(long long i=0;i<n;i++)
        fo<<s1[i]<<endl;
    //cout << "Hello world!" << endl;
    return 0;
}
