#include <bits/stdc++.h>
using namespace std;
#define N 1000001
#define ll long long
ll b[N*2],c[N*2];
int main()
{
    //freopen("SEQGAME.INP","r",stdin);
    //freopen("SEQGAME.OUT","w",stdout);
    ios_base::sync_with_stdio(0);
    cin.tie(0);
    cout.tie(0);

    int i,n,t=0,x;

    cin>>n;

    for (i=0;i<n;i++) {cin>>x;b[x+N]++;}
    for (i=0;i<n;i++) {cin>>x;c[x+N]++;}

    for (i=0;i<N*2;i++) {if (b[i]>0) {t+=i-N;break;}}
    for (i=0;i<N*2;i++) {if (c[i]>0) {t+=i-N;break;}}
    cout<<t;
    return 1;
}
