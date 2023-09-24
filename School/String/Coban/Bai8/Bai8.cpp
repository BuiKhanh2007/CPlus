#include <bits/stdc++.h>
using namespace std;
int main()
{
    vector<string> a;
    string s,q="";
    bool check=true;
    cin>>s;
    int temp=static_cast<int>(s[0]);
    q=temp;
    for (int i=1;i<s.size();i++)
    {
        if (temp==static_cast<int>(s[i])-1)
        {
            check=true;
        }
        else{a.push_back(q);q=s[i];check=false;}
        if (check)
        {
             q+=static_cast<char>(s[i]);
        }
        temp=s[i];
    }
    a.push_back(q);
    int k=0,index=0;
    for(int i=0;i<a.size();i++)
        {
            if (k<static_cast<int>(a[i].size()))
            {
                k=static_cast<int>(a[i].size());
                index=i;
            }
        }
    cout<<a[index];
    return 0;
}
