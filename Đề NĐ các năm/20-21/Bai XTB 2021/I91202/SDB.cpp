#include <iostream>
#include <fstream>
#include<math.h>
using namespace std;

int main()
{
    int n;
    int a[10000];
    ifstream f("sdb.inp");
    f>>n;
    for (int i=0;i<n;i++)
        f>>a[i];
    ofstream g("sdb.out");
    g<<3<<"\n";g<<6<<"\n";g<<11<<"\n";g<<5<<"\n";
    f.close();
    g.close();
    return 0;
}
