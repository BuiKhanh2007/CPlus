#include <bits/stdc++.h>
using namespace std;
pair<int,int > a[1000005],b[1000005];
long long n,s,d;
int main()
{
       freopen("SDB.INP","r",stdin);
    freopen("SDB.OUT","w",stdout);
    cin>>n;
    for(int i=1;i<=n;i++)
    {
        cin>>a[i].first;
        a[i].second=i;
    }
    sort(a+1,a+n+1);
    s=1;
    d=0;
    for(int i=2;i<=n;i++)
    {
        if(a[i].first!=a[i-1].first)
        {
            if(s==1)
             {
            d++;
            b[d].first=a[i-1].second;
            b[d].second=a[i-1].first;
            }
            s=1;
        }
        else s++;
    }
    if(s==1)
    {
        d++;
        b[d].first=a[n].second;
        b[d].second=a[n].first;
    }
    sort(b+1,b+d+1);
     cout<<d<<'\n';
    for(int i=1;i<=d;i++)
    {
        cout<<b[i].second<<'\n';
    }

    return 0;
}
