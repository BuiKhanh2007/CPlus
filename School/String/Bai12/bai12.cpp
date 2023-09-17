#include <iostream>
#include <string>
using namespace std;
int main()
{
    string s;
    int a[125];
    for(int i=0;i<126;i++) a[i]=0;
    cin>>s;
    for (int i=0;i<s.size();i++)
    {
        a[static_cast<int>(s[i])]++;
    }
    for (int i=0;i<124;i++)
    {
        if (a[i]!=0)
        {
            for(int j=0;j<a[i];j++)
                {cout<<static_cast<char>(i);}
        }
    }
    return 0;
}
