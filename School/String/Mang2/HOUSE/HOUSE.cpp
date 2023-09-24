#include <bits/stdc++.h>
using namespace std;
#define N 2505 //1 ≤ n ≤ 2500
string c;
int n;
int main()
{
    cin>>n>>c;
    int i=0,d=0;
    for (i=1;i<c.length();i++)
    {
        if (!(c[i]!=c[i-1]))
        {
            c[i]='0';
            d++;
        }
    }
    cout<<d;
    return 0;
}
