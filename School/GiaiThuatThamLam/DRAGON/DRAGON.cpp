#include <bits/stdc++.h>
using namespace std;
int main()
{
    int s,n;
    cin>>s>>n;
    pair<int,int> khanh[n];

    for (int i=0;i<n;i++)
    {
        cin>>khanh[i].first>>khanh[i].second;
    }
    int i=0;
    while (n!=0)
    {
        if (s>khanh[i].first)
        {
            s+=khanh[i].second;
            i++;
            n--;
        }
        else break;
    }

    if (n!=0) cout<<"NO\n"<<n;
    else cout<<"YES";

    return 0;
}

