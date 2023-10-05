#include <bits/stdc++.h>
using namespace std;
vector<int> khanh(1000000,0);
int main()
{
    int n,m;
    cin>>n>>m;
    int a;
    for (int i=0;i<n;i++)
    {
        cin>>a;
        khanh[i]=a+khanh[i-1];

    }

    int i,j;
    while (m--)
    {
        cin>>i>>j;
        cout<<khanh[j-1]-khanh[i-2]<<" ";
    }
    return 0;
}
