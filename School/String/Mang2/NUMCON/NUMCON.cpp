#include <bits/stdc++.h>
using namespace std;
void split(const string &s, vector<string> &a) {
    string tu = "";
    for (int i = 0; i < s.length(); i++) {
        if (s[i] == ' ') {
            a.push_back(tu);
            tu = "";
        } else {
            tu += s[i];
        }
    }
    a.push_back(tu);
}

int main() {
    vector<string> a;
    string s = "to yeu cau";
    split(s, a);
    auto n = a.size();
    for (int i = 0; i < n; i++)
        cout << i << '.' << a[i] << " ";
    return 0;
}
