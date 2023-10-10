#include <bits/stdc++.h>
#include <algorithm>
using namespace std;
int main()
{
    int n,minn=0,d=0;
    cin>>n;
    int khanh[n];
    int l[n/2],r[n/2]; 
    for (int i=0;i<n;i++)
    {
        int a;
        cin>>a;
        khanh[i]=a;
    }
    sort(khanh,khanh+n);
    copy(khanh,khanh+n/2-1,l);
    copy(khanh,khanh+n,r);
    sort(r,r+n/2,greater<int>()); 
    cout<<sizeof(l)/sizeof(l[0])<<" "<<sizeof(r)/sizeof(r[0])<<" ";

    for(int i=0;i<n/2+1;i++)
    {
        d=r[i]+l[i];
        minn=max(minn,d);
    }
    cout<<minn;

}
