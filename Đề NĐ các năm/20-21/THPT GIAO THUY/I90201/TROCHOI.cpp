#include <bits/stdc++.h>
//HoangQuocChung
using namespace std;
ifstream fi ("TROCHOI.INP");
ofstream fo ("TROCHOI.OUT");
string s, s1="",s2[10001];
long long n,nhonhat=10000000,spt=0,spt1=0,gt[100000];
long long xausangso (string s)
{
    long long n;
    stringstream ss;
    ss<<s;
    ss>>n;
    ss.clear();
    return n;
}
int main()
{
    fi>>n;
    getline (fi,s);
    for (int i=1;i<=n;i++)
    {
        s1="";
        getline (fi,s);
        spt++;
        s2[spt]=s;
        for (int j=0;j<s.size();j++)
            if (int (s[j])>=48 && int (s[j])<=57)
                s1=s1+s[j];
                spt1++;
                gt[spt1]=xausangso(s1);


    }
  for (int i=1;i<spt1;i++)
        for (int j=i+1;j<=spt1;j++)
        if (gt[i]>gt[j])
    {
        swap (gt[i],gt[j]);
        swap (s2[i],s2[j]);
    }
    for (int i=1;i<=spt1;i++)
        fo<<s2[i]<<endl;


    return 0;
}
