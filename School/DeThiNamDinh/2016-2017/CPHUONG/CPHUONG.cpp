#include <bits/stdc++.h>
using namespace std;
int main()
{
    int n;
    cin>>n;
    for (int i=0;i<n;i++)
    {
        int a;cin>>a;
        if(sqrt(a)*sqrt(a)!=a)
        {
            cout<<0<<'\n';
        }
        else cout<<1<<'\n';
    }
    return 0;
}
