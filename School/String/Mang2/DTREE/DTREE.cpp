#include <bits/stdc++.h>
#define N 1000
using namespace std;
struct doan
{
    int x, type;/// type = 0 điếm mở, type =1 điểm đóng
};
doan a[2*N+3];
int n; ///số đoạn thằng n
bool cmp (doan D1, doan D2)
{
    return D1.x < D2.x;
}
int main()
{
    ios_base::sync_with_stdio(0);
    cin.tie(0);
    cout.tie(0);
    int test; cin>>test;
    while (test --)
    {
        memset(a,0,sizeof(a));
        int d = 0;
        cin>>n;
        for(int x,r,i=1;i<=n;i++)
        {
            cin >> x >> r;
            a[++d]= {x-r, 0};///đầu mút bên trái điểm mở
            a[++d]= {x+r, 1};///đầu mút  bên phải điểm mở
        }
        sort(a+1,a+1+n*2,cmp);
        int res = 0;
        d=0;
        for (int i=1; i<=2*n;i++)
        {
            if (d>0) res += a[i].x - a[i-1].x;
            if (a[i].type==0) d++;/// nếu là điểm mở thì tăng d lên 1 đơn vị
            else d--; /// ngược lại nếu là điểm đóng thì giảm d xún 1 đơn vị
        }
        cout << res <<'\n';
    }

    return 0;
}
