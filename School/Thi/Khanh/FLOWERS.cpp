#include <bits/stdc++.h>
using namespace std;
#define N 100000004
int n,a[N];
int main()
{
    freopen("FLOWERS.INP","r",stdin);
    freopen("FLOWERS.OUT","w",stdout);
    ios_base::sync_with_stdio(0);
    cin.tie(0);
    cin>>n;
    int r=1,i,x,kq=-1;
    a[n+1]=-1;a[n+2]=-2;
    for (i=0;i<n;i++) cin>>a[i];

    bool trung=false;
    for (int i=1;i<n;i++)
    {
        if (a[i-1]==a[i])
        {
            if (trung)
            {
                r=2;
            }
            else
            {
                trung=true;
                r++;
            }
        }
        else
        {
            r++;
            trung=false;
        }
        kq = max(kq,r);

    }
    if (kq!=-1)
        cout<<kq;
    else cout<<-1;
    return 0;
}
