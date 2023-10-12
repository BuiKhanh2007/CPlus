#include <bits/stdc++.h>
using namespace std;
bool songuyento(int a)
{
    if (a<2) return false;
    if (a%2==0) return (a==2);

    for (int i=3;i*i<=a;i+=2){
        if (a%i==0) return false;
    }
    return true;
}
void fabonaci(int &a)
{
    int fo=1,fi=1,fn=0;
    if (a>=3)
    {
        for (int i=3;fn<=a;i++)
        {
           fn=fi+fo;
           if (!(fn<=a)) break;
           int t=fo;
           fo=fn;
           fi=t;
           if (songuyento(fn)) {cout<<fn<<'\n';}
        }
    }
}

int main()
{
    int a;
    cin>>a;
    fabonaci(a);
    return 0;
}
