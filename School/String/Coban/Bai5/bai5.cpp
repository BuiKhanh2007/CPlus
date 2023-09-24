#include <bits/stdc++.h>
using namespace std;
int main()
{
    int a[123];
    string c;
    cin>>c;
    char s=c[0];
    for(int i=0;i<c.size();i++)
    {
        if (s==c[i])
        {
            c.erase(i,i);
        }
        s=c[i];
    }
    cout<<c;
    return 0;
}
