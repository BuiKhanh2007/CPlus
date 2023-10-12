#include <bits/stdc++.h>
//HOANGSONLAMQL..
using namespace std;
ifstream fi("GHH.INP");
ofstream fo("GHH.OUT");
long long n,a[10001];
bool check[100001];
int main()
{
    fi>>n;
        long long x=0,dem=0,tong=0;
    for(long long i=0;i<n;i++)
    {
        fi>>x;
        if(x!=1)
        {
            tong=0;
            for(long long j=2;j<sqrt(x);j++)
                if(x%j==0) tong=tong+j+x/j;
                if(sqrt(x)==trunc(sqrt(x))) tong=tong+sqrt(x);
            if(2*x<=tong+x+1)
            {
                dem++;
                a[dem]=x;
            }
        }
    }
    fo<<dem<<endl;
    for(long long i=1;i<=dem;i++) fo<<a[i]<<endl;
    //cout << "Hello world!" << endl;
    return 0;
}
