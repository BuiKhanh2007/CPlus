#include <bits/stdc++.h>
using namespace std;
int main()
{
    int n,d=2000000001;
    cin>>n;
    int khanh[n];
    cin>>khanh[0];
    for (int i=1;i<n;i++)
    {
        cin>>khanh[i];
        d=min(d,khanh[i]+khanh[i-1]);
    }
    cout<<d;
}
