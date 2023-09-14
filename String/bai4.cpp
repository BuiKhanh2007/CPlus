#include <bits/stdc++.h>
using namespace std;
int main()
{
    string c,s;
    cin>>c;
    cin>>s;
    int d=0;
    for (int i=0;i<c.length();i++)
    {
        if (s[0]==c[i])
        {
            if (s==c.substr(i,s.size()))
            {
                d++;
            }
        }
    }
    cout<<d;
    return 0;
}
