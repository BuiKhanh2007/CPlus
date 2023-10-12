#include <bits/stdc++.h>

using namespace std;
int main()
{
    int n,s;
    cin>>n>>s;
    int k[n];
    for (int i=0;i<n;i++)
    {
        cin>>k[i];
    }

    sort(k,k+n);
    int d=0;
    for (int i=0;i<n;i++)
    {
        if (s>=k[i])
        {
            s+=k[i];
            d++;
        }
        else break;
    }
    cout<<d;

    return 0;
}
