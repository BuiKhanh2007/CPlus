#include <bits/stdc++.h>
using namespace std;
int main()
{
    int n,r,d=0;
    cin>>n>>r;
    
    for (int i=0;i<n;i++)
    {
        int x,y;
        cin>>x>>y;
        
        int k = sqrt(pow(x,2)+pow(y,2));
        if (k<=r) d++;
    }
    cout<<d;
    return 0;
}
