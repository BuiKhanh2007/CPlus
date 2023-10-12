#include <iostream>
#include<fstream>
using namespace std;
bool check (int n);
int main()
{
    int n;
    int dem =0;
    int a[100];
    ifstream f ("GHH.inp");
    f>>n;
    for (int i=0;i<n;i++)
        f>>a[i];
    ofstream g ("GHH.out");
    for(int i=0;i<n;i++)
    if (check(a[i])==true)
    {
dem =dem +1;
    }
    g<<dem+1;

    f.close();
    g.close();
    return 0;
}
bool check (int n)
{
    int  sum =0;
    for (int i=1;i<=n/2;i++)
    {
     if (n%i==0)
      sum+=1;
    }
    if(sum==1) return true;
    return false;
}
