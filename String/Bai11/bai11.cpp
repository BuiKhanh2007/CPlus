#include <bits/stdc++.h>
/*Chuỗi con chung dài nhất: Tìm chuỗi con chung dài nhất giữa hai xâu.
Ví dụ: Tìm chuỗi con chung dài nhất giữa "abcdef" và "acbcf" là "abcf".*/
using namespace std;
int main()
{
    int a[123];
    string l,s;
    cin>>l>>s;
    string p="";
    for(int i=0;i<s.size();i++)
    {
        a[static_cast<int>(s[i])]++;
    }
    for(int i=0;i<l.size();i++)
    {
        if (a[static_cast<int>(l[i])]==0)
        {

            l.erase(s.size()-i,1);
        }
        cout<<a[i]<<" ";
    }
    cout<<l;
    return 0;
}

