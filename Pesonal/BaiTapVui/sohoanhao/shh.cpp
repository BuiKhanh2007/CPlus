#include <bits/stdc++.h>
using namespace std;
int main()
{
  int a;
  int n,d=0;cin>>n;
  for (int i=0;i<n;i++)
  {
    cin>>a;
    switch (a){
      case 6:
        d++;
        break;
      case 28:
        d++;break;
      case 496:
        d++;break;
      case 8128:
        d++;break;
      case 2096128:
        d++;break;
    }
  }
  cout<<d;
  return 0;
}
