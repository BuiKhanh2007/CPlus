#include <bits/stdc++.h>
using namespace std;
int main()
{
    vector<int> truoc(126,0),sau(126,0);
    int d=0,j=0;
    string s,ss;
    cin>>s>>ss;
    if (s<ss) swap(s,ss);
    for (int i=0;i<s.size();i++)
    {
        sau[s[i]]++;
    }
    for(j=0;j<ss.size();j++)
    {
        truoc[ss[j]]++;
    }
    for(int i=0;i<126;i++)
    {
        if (abs(truoc[i]-sau[i])!=0)
            //cout<<truoc[i]<<" "<<sau[i]<<" ";
            d+=abs(truoc[i]-sau[i]);
    }
    cout<<d;
    return 0;
} 
