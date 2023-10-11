#include <bits/stdc++.h>
using namespace std;
int main()
{
    int n;
    cin>>n;
    int k[n];
    cin>>k[0];
    for (int i=1;i<n;i++)
    {
        cin>>k[i]; 
    }
    int smax=-999999999;
    for (int i:k) cout<<i<<" ";
    for(int i=0;i<n-1;i++)
    {
        int smin=k[i];
        for (int j=i+1;j<n;j++){
            smin+=k[j];
            if (smin>smax) { break;}
        }
        smax=max(smax,smin);
    }
    cout<<smax;
    return 0;
}
