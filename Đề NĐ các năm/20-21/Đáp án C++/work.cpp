#include<bits/stdc++.h>
using namespace std;
const long o=1e6+5;
long n,t[o],p[o],f[o];
int main()
{
    freopen("work.inp","r",stdin);
    freopen("work.out","w",stdout);
    ios_base::sync_with_stdio(0);cin.tie(0);cout.tie(0);
    cin>>n;
    for(long i=1;i<=n;i++)
        cin>>t[i];
    for(long i=1;i<n;i++)
        cin>>p[i];
    f[1]=t[1];
    for(long i=2;i<=n;i++)
        f[i]=min(f[i-1]+t[i],f[i-2]+p[i-1]);
    cout<<f[n];
    return 0;
}
