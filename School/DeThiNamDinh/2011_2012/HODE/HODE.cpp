#include <bits/stdc++.h>
using namespace std;
int main()
{
    int n,s=0;
    cin>>n;
    vector<int> k(n,0);
    for(int i=0;i<n;i++)
    {
        cin>>k[i];
    }
    if (k.size()%2!=0) k.erase(k.begin());

    sort(k.begin(),k.end(),greater<int>());

    for (int i=0;i<k.size();i+=2)
    {
        s+=k[i]-k[i+1];
    }
    cout<<s;
    return 0;
}
