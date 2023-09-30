#include <bits/stdc++.h>
using namespace std;
void khanh(string &s,int a)
{

    int i=0;
    while (i<a)
    {
        if ((s[i]+s[i+1]==153) || (s[i]+s[i+1]==158))
        {
            i+=2;
        }
        else
        {
            if (s[i]=='U') s[i]='D';
            else if (s[i]=='D') s[i]='U';
            else if (s[i]=='L') s[i]='R';
            else if (s[i]=='R') s[i]='L';
            i++;
        }

    }
}
int main()
{
    string s;
    int n,a;
    cin>>n;
    for(int i=0;i<n;i++)
    {
        cin>>a>>s;
        khanh(s,a);
        cout<<s<<"\n";
    }
    return 0;
}
