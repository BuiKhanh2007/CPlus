#include <iostream>
#include<fstream>
using namespace std;

int main()
{
   int n;
   int a[1000000];
   
   int s=0;
   ifstream f ("WORK.inp");
   f>>n;
   for (int i=0;i<n;i++)
    f>>a[i];
   ofstream g ("WORK.out");
   for (int i=0;i<n;i++)
   {

    if (a[i]>0 )
    {
s =s +a[i];
    }
   }
   g<<s;
   f.close();
   g.close();
    return 0;
}
