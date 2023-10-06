#include <bits/stdc++.h>
using namespace std;
void khanh(string &s)
{
   for(int i=0;i<s.size();i++)
   {
       if (s[i]==' ' && s[i+1]==' ')
       {
           s.erase(i,1);
           i--;
       }
   }
   if (s[0]==' ') s.erase(0,1);
}
int main()
{
    
    int i;
    string s;
    bool dau=true;
    getline(cin,s); 
    
    khanh(s);
    for (int i=0;i<s.size();i++)
    {
        if (dau)
        {
            s[i]=toupper(s[i]);
            dau=false;
        }
        else if (s[i]==' ')
        {
            dau = true;
        }
        else s[i]=tolower(s[i]);
    }
    cout<<s;

}
