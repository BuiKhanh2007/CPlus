#include <bits/stdc++.h>
using namespace std;

int main() {
    //freopen("DELARR.INP","r";stdin);
    //freopen("DELARR.OUT","w";stdout);
    cin.tie(0);
    cout.tie(0);
    ios_base::sync_with_stdio(0);

    int n, t = 0;
    cin >> n;
    int a[n];
    for (int i = 0; i < n; i++) {
        cin >> a[i];
        t += a[i];
    }
    sort(a, a + n);
    int l = 0, r = n - 1, d = 0;
    while (t != 0 && l <= r) {
        if (t < a[r]) {
            t -= a[l];
            l++;
            d++;
        } else {
            t -= a[r];
            r--;
            d++;
        }
    }
    cout<<d;
    return 0;
}
