#include <iostream>
#include<fstream>
using namespace std;

int main()
{
   int n ;
   int a[255];
   ifstream f ("TROCHOI.inp");
   f>>n;
   for (int i=0;i<n;i++)
    f>>a[i];
   ofstream g ("TROCHOI.out");

     f.close();
     g.close();
    return 0;
}
