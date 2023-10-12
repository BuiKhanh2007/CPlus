#include <bits/stdc++.h>
#include <algorithm>
using namespace std;
int main()
{
    int n,minv=0;
    cin>>n;
    int khanh[n];
    for (int i=0;i<n;i++)
    {
        cin>>khanh[i];
    }
    sort(khanh,khanh+n);
    int l[n/2],r[n/2];
    if (n%2==0){
        int l[n/2],r[n/2];
        copy(khanh,khanh+n/2,l),copy(khanh+n/2,khanh+n,r);
    }
    else {
        copy(khanh+1,khanh+n/2+1,l),copy(khanh+n/2,khanh+n,r);
    }
    reverse(r, r+n/2);
    for (int i=0;i<n/2;i++)
    {

        minv=max(minv,l[i]+r[i]);
    }
    cout<<minv;

}
