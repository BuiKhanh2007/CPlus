#include <bits/stdc++.h>
using namespace std;
int main()
{
    string s,t="";
    getline(cin,s);
    int j=0;
    vector<string> a;
    for (int i=0;i<s.size();i++)
    {
        if (s[i]==' ')
        {
            if (j!=0)
            {
                a.push_back(t);
                t="";
            }
        }
        else {t+=s[i];j++;}
    }
    cout<<'[';
    for(int i=0;i<a.size();i++)
    {
        cout<<a[i]<<',';
    }
    cout<<t<<']';
    return 0;
}
