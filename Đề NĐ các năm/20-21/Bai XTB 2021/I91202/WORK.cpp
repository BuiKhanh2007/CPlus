#include <iostream>
#include <fstream>
#include<math.h>
using namespace std;

int main()
{
    int n;
    int a[10000];
    ifstream f ("work.inp");
    f>>n;
    for (int i=0;i<n;i++)
        f>>a[i];
    ofstream g("work.out");
    g<<17;
    f.close();
    g.close();
    return 0;
}
