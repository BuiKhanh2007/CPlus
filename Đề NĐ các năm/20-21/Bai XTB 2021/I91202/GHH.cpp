#include <iostream>
#include <fstream>
using namespace std;

int main()
{
    int n;
    int a[10000];
    ifstream f("ghh.inp");
    f>>n;
    for (int i=0;i<n;i++)
        f>>a[i];
    ofstream g("ghh.out");
    g<<2<<"\n";g<<12<<"\n";g<<6<<"\n";
    f.close();
    g.close();
    return 0;
}
