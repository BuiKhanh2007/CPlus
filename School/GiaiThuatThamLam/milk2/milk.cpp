#include <bits/stdc++.h>

using namespace std;

int main() {
    int n;
    cin >> n;
    vector<int> k(n);

    for (int i = 0; i < n; i++) {
        cin >> k[i];
    }

    sort(k.rbegin(), k.rend());

    int d = 0;

    for (int i = 0; i < n; i++) {
        d += k[i];
        k[i+1]=k[i]-1;
    }

    cout << d;

    return 0;
}
