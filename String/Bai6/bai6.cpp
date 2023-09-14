#include <bits/stdc++.h>
using namespace std;//162
int main()
{
    string s;
    getline(cin,s);
    for(int i=0;i<s.size();i++)
    {
        if (s[i]!=' ')
        {
            if (s[i]==tolower(s[i]))
            {s[i]=toupper(s[i]);}
            else s[i]=tolower(s[i]);
        }
    }
    cout<<s;

    return 0;
}
