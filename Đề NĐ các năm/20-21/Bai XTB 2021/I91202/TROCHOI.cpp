#include <iostream>
#include <fstream>
using namespace std;

int main()
{
    int n;
    int a[10000];
    ifstream f("trochoi.inp");
    f>>n;
    for (int i=0;i<n;i++)
        f>>a[i];
    ofstream g("trochoi.out");
    g<<G2Chuc<<"\n";
    g<<A89Dat<<"\n";
    g<<L512Ket<<"\n";
    g<<E3689Qua<<"\n";
    g<<N123456Cao<<"\n";
    f.close();
    g.close();
    return 0;
}
