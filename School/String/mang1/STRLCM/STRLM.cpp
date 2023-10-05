#include <bits/stdc++.h>
using namespace std;
void khanh(string &s,string &ss)
{
    string t;
    if (s>ss){
        for(int i=0;i<s.size();i++)
        {
            t+=ss;
            if (t==s) break;
        }
    }
    else {
        int n=s.size()*ss.size();
        for (int i=0;i<n;i++)
        {
            cout<<ss;
            return;
        }
    }
    if (t==s){
        if (s<ss) {cout<<t;}
    }
    else cout<<-1;
}
int main()
{
    int n,a;
    string s,ss;
    cin.tie(0);
    cout.tie(0);
    cin>>n;
    for(int i=0;i<n;i++)
    {
        cin>>s>>ss;
        khanh(s,ss);
    }
    return 0;
}
