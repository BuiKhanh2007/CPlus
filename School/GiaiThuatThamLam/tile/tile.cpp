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

    int d = 1;
    int dk=k[0];
    for (int i = 1; i < n; i++) {
        if (dk==0) break;
        if (dk>=k[i])
        {
            d++;
            dk-=k[i];
        }
        else break;
    }

    cout << d;

    return 0;
}

