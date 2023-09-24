#include <bits/stdc++.h>
using namespace std;
#define N 100004
int n,sum[N],x;
int main()
{
    ios_base::sync_with_stdio(0);
    cin.tie(0);
    cout.tie(0);

    cin>>n;
    cin>>x;
    sum[0]=x;
    int t=sum[0];
    for (int i=1;i<n;i++)
    {
        cin>>x;
        sum[i]=max(0,(x-sum[i-1]));
        t+=(x+sum[i]);
    }
    cout<<t;
    return 0;
}
