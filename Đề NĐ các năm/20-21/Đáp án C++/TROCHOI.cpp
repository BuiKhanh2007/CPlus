#include <bits/stdc++.h>

using namespace std;

pair<int , int > b[10005];
long long n;
string a[10005];
int dem(string a)
{
    int d=0;
    for(int i=0;i<a.size();i++)
    {
        if(a[i]>='0'&&a[i]<='9')
            d++;
    }
    return d;
}
int main()
{
	ios_base::sync_with_stdio(0);cin.tie(0);cout.tie(0);
    freopen("TROCHOI.INP","r",stdin);
    freopen("TROCHOI.OUT","w",stdout);
    cin>>n;
    for(int i=1;i<=n;i++)
    {
        cin>>a[i];
        b[i].first=dem(a[i]);
        b[i].second=i;
    }
    sort(b+1,b+n+1);
    for(int i=1;i<=n;i++)
    {
        cout<<a[b[i].second]<<'\n';
    }
    return 0;
}
