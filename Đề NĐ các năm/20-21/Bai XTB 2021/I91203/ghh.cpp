#include <iostream>
#include <fstream>
using namespace std;
int tonguoc (int k);
int main()
{
    int n;
    ifstream f("ghh.inp");
    f>>n;
    ofstream g("ghh.out");
    for (int i=0;i<n;i++)
        if (tonguoc(i)==true)
        g<<"la so gan hoan hao"<<i;
            else
        g<<"khong la so gan hoan hao"<<i;
    return 0;
}
int tonguoc(int k)
{
    int q=k;int t=0;
    if (q!=0)
  {
    t=t+q%10;
    q=q/10;
  }
  return k;
}
