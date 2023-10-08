#include <bits/stdc++.h>
using namespace std;
int main()
{
    string s,t;
    int n,d=0,i=0,j=1,k=2;
    cin>>n>>s;

    for (int i=0;i<s.size();i++)
    {
        if (s[i]=='x' && s[i+1]=='x' && s[i+2]=='x')
        {
            d++;
            s.erase(i,1);
            i--;
        }
    }
    cout<<d;
    return 0;
}
