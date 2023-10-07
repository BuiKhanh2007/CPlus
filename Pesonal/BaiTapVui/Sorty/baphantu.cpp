#include <bits/stdc++.h>
using namespace std;

struct khanh {
    int x, y, z;
    khanh() : x(0), y(0), z(0) {}  
    khanh(int a, int b, int c) : x(a), y(b), z(c) {}
};

bool sosanh(const khanh& a, const khanh& b) {
    return a.y < b.y;
}

int main() {
    int n;
    cin >> n;
    vector<khanh> k(n);

    for (int i = 0; i < n; i++) {
        cin >> k[i].x >> k[i].y >> k[i].z;
    }
    sort(k.begin(), k.end(), sosanh);

    cout << "[[" << k[0].x << "," << k[0].y << "," << k[0].z << "]";
    for (int i = 1; i < k.size(); i++) {
        cout << ",[" << k[i].x << "," << k[i].y << "," << k[i].z << "]";
    }
    
    cout << "]" << endl;

    return 0;
}
