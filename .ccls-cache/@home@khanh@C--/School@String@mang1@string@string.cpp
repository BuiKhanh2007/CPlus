#include <bits/stdc++.h>
using namespace std;
int main()
{
    string s,ss;
    while (1)
    {
        cin>>s>>ss;
        if (s=="END" && ss=="END") break;

        sort(s.begin(),s.end());
        sort(ss.begin(),ss.end());
        if (ss==s) cout<<"Same\n";
        else cout<<"Deffirence\n";
    }
    return 0;
}
