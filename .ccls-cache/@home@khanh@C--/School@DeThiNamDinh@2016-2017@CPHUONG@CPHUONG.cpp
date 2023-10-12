#include <bits/stdc++.h>
using namespace std;
int main()
{

    int n;
    cin>>n;
    int k[n];
    for (int i=0;i<n;i++)
    {
        cin>>k[i];
    }
    for (int i=0;i<n;i++)
    {
        if(sqrt(k[i])!=round(sqrt(k[i])))
        {
            cout<<0<<endl;
        }
        else cout<<1<<endl;
    }
    fclose(stdout);
    return 0;
}
