#include <iostream>
#include<fstream>

using namespace std;

int main()
{
    int n;
    int a[1000000];
    int dem =0;
    ifstream f ("SDB.inp");
    f>>n;
    for (int i=0;i<=n;i++)
        f>>a[i];
    ofstream g ("SDB.out");
    for (int i=0;i<=n;i++)
 if (a[1]%a[i]==1)
{
    dem =dem +0;
}
else
{
    dem =dem +1;
}
    f.close();
    g.close();
            return 0;
}
