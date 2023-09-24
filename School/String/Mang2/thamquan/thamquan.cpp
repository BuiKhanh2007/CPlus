#include <bits/stdc++.h>
#include <algorithm>
int N,M,i,j,a;
using namespace std;
int main()
{
    cin>>N>>M;
    int d[N],v[M];
    for (i=0;i<N;i++) cin>>d[i];
    for (i=0;i<M;i++) cin>>v[i];

    sort(d,d+N);
    sort(v,v+M);
    int tong=0;
    for (i=0;i<N;i++)
    {
        tong+=d[i]*v[N-i-1];
    }
    cout<<tong;


    return 0;
}
