#include <bits/stdc++.h>
const int N=500001;
using namespace std;
int p1[N],p2[N],p3[N];
int n,l,r,x,m;
int main()
{
    ios_base::sync_with_stdio(0);
    cin.tie(0);
    cout.tie(0);
    cin>>n>>m;
    p1[0]=0;
    p2[0]=0;
    p3[0]=0;
    for (int i=1; i<=n; i++)
    {
        cin>>x;
        p1[i]=p1[i-1];
        p2[i]=p2[i-1];
        p3[i]=p3[i-1];

        if (x==1) p1[i]++;
        else if (x==2) p2[i]++;
        else p3[i]++;
    }
    while (m!=0)
    {
        cin>>l>>r;
        cout<<p1[r]-p1[l-1]<<" "<<p2[r]-p2[l-1]<<" "<<p3[r]-p3[l-1]<<'\n';
        m--;
    }
    return 0;
}

