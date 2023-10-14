#include <bits/stdc++.h>
using namespace std;
int main()
{
  int n;cin>>n;
  int a[n],b[n];
  for (int i=0;i<n;i++)
  {
    cin>>a[i];
  }
  for (int i=0;i<n;i++)
  {
    cin>>b[i];
  }
  int i=0,j=0,s=999999999;
  while (i!=n and j!=n)
  {
      s=min(abs(a[i]+b[j]),s);
      if (abs(a[i+1]+b[j])<s)
      {
        i++;
      }
      else if (abs(a[i]+b[j+1])<s)
      {
        j++;
      }
      else
      {
        i++,j++;
      }

      if (j==n-1) j=n-1;
      if (i==n-1) i=n-1;
  }
  cout<<s;
  return 0;
}
