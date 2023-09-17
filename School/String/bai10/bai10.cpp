/* Kiểm tra chuỗi con: Kiểm tra xem một xâu có phải là chuỗi con của một xâu khác hay không
. Ví dụ: Kiểm tra xem "abc" có là chuỗi con của "xyzabcuv" hay không.*/
#include <bits/stdc++.h>
using namespace std;
int main()
{
    string a,s;
    cin>>a>>s;
    bool check=false;
    for(int i=0;i<a.size();i++)
    {
        if (a[i]==s[0])
        {
            if (a.substr(i,s.size())==s)
            {
                check=true;
                break;
            }
        }
    }
    cout<<check;
    return 0;
}
