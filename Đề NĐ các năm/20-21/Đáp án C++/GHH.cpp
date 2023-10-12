#include <bits/stdc++.h>

using namespace std;

int ghh(int a)
{
    int d=0;
    for(int i=1;i*i<=a;i++)
    {
        if(a%i==0)
        {
			d=d+i;
			if(i!=a/i)
			{
				d=d+a/i;
			}
		}
	}
    return d;
}
int a[10005],n,d=0;
int main()
{
	ios_base::sync_with_stdio(0);cin.tie(0);cout.tie(0);
    freopen("GHH.INP","r",stdin);
    freopen("GHH.OUT","w",stdout);
    cin>>n;
    for(int i=1;i<=n;i++)
    {
        cin>>a[i];
    }
    for(int i=1;i<=n;i++)
    {
		if(2*a[i]<=ghh(a[i])) 
			d++;
    }
    cout<<d<<'\n';
    for(int i=1;i<=n;i++)
    {
		if(2*a[i]<=ghh(a[i])) 
			cout<<a[i]<<'\n';
    }
    return 0;
}
