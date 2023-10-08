#include <bits/stdc++.h>
using namespace std;
int khanh(string s,int p)
{
    int C=0,O=0,W=0;
    bool qc=true,qo=true;
    for (int i=p;i<s.size();i++)
    {
        if (s[i]=='C' && qc==true) C++;
        else if (s[i]=='O' && qo==true) {O++;qc=false;}
        else {W++;qo=false;}
    }
    return C*O*W;
}
int main()
{
    int d=0;
    string s;
    cin>>s;
    for(int i=0;i<s.size();i++)
    {
        if (s[i]=='C')
            d+=khanh(s,i);
    }
    cout<<d;
    return 0;
}
