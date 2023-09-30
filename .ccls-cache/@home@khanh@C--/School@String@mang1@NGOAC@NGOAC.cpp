#include <bits/stdc++.h>
using namespace std;

int main() {
    string s;
    cin >> s;
    stack<int> t;
    for (int i=0;i<s.length();i++){
        if (s[i]!='(' && s[i]!=')'){
            cout << "KHONG HOP LE";
            return 0;
        }
        if (s[i]=='('){
            t.push(0);
        }
        if (s[i]==')'){
            if (t.empty()){
                cout << "KHONG DUNG";
                return 0;
            }
            else t.pop();
        }
    }
    if (t.empty()) cout << "DUNG";
    else cout << "KHONG DUNG";
    return 0;
}
