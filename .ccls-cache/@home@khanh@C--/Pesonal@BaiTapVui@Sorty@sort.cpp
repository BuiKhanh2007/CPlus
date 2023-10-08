#include <bits/stdc++.h>
using namespace std;

bool khanh(pair<int, int> a,pair<int, int> b)
{
    return a.second < b.second;
}
int main()
{

  int n;
  cin>>n;
  pair<int, int> a[n];
  for(int i=0;i<n;i++)
  {
    cin>>a[i].first>>a[i].second;

  }
  sort(a,a+n,khanh);
  cout<<'['<<'['<<a[0].first<<','<<a[0].second<<']';
  for(int i=1;i<n;i++)
    cout<<",["<<a[i].first<<","<<a[i].second<<']';
  cout<<']';
  return 0;
}
