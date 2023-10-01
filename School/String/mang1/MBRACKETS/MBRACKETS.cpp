#include <bits/stdc++.h>
using namespace std;
int main(){
    string s;
    int n,a;

    cin>>n;
    for(int j=0;j<n;j++)
    {
        stack<char> t;int d=0;
        cin>>a;
        cin>>s;

        for(int i=0;i<a;i++){
         if (!t.empty()){
            if (s[i]=='(' && t.top()==')'){
                d++;
                t.pop();
            }
            else if ( s[i]==')' && t.top()=='('){
                t.pop();
            }
            else t.push(s[i]);
        }
         else t.push(s[i]);
    }
         cout<<d;

    }
    return 0;

}
