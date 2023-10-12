#include <bits/stdc++.h>

using namespace std;

int main()
{
    int n,m;
    cin>>n>>m;
    int k[n];
    for (int i=0;i<n;i++)
    {
             cin>>k[i];
    }
    cin.tie(0);
    cout.tie(0);
    ios_base::sync_with_stdio(0);
    sort(k,k+n,greater<int>());
    int smax=0,d=k[0];
    while (smax!=m)
    {
        smax=0;
        for(int i=0;i<n;i++)
        {
            if (k[i]>d)
            {
                smax+=k[i]-d;
            }
            else break;
        }
        d--;
    }
    cout<<d+1;
    return 0;
}
