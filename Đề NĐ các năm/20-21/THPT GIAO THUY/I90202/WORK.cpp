#include <bits/stdc++.h>

using namespace std;
ifstream fi("WORK.INP");
ofstream fo("WORK.OUT");
long long n,a[1000001],b[100001];
int main()
{
    fi>>n;
    long long tong=0;
    for(long long i=0;i<n;i++) fi>>a[i];
    for(long long i=0;i<n;i++) fi>>b[i];
    for(long long i=0;i<n;i=i+2)
            tong=tong+b[i];
            if(n%2!=0)  tong=tong+a[n-1];
     fo<<tong;
    //cout << "Hello world!" << endl;
    return 0;
}
