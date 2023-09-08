#include <iostream>
using namespace std;
int main()
{
    short chon;
    bool dung=true;
    while (dung)
    {
        cout<<"Nhap loai tinh toan";
    cout<<'\n'<<"1.Cong\n2.Tru\n3.Nhan\n4.Chia\n";
        double a,b;
        cin>>chon;
        switch (chon)
        {
            case 1:
                cout<<"Nhap a: ";
                cin>>a;
                cout<<"nhap b: ";
                cin>>b;
                cout<<a<<"+"<<b<<"="<<a+b;
                break;
            case 2:
                cout<<"Nhap a: ";
                cin>>a;
                cout<<"nhap b: ";
                cin>>b;
                cout<<a<<"-"<<b<<"="<<a-b;
                break;
            case 3:
                cout<<"Nhap a: ";
                cin>>a;
                cout<<"nhap b: ";
                cin>>b;
                cout<<a<<"*"<<b<<"="<<a*b;
                break;
            case 4:
                cout<<"Nhap a: ";
                cin>>a;
                cout<<"nhap b: ";
                cin>>b;
                cout<<a<<"/"<<b<<"="<<a/b;
                break;
            default:
                cout<<"Nhap lai!"<<'\n';
                break;
        }
        cout<<'\n';
        char continuee;
        cout<<"Tiep Tuc(Y/N): ";
        cin>>continuee;
        if  (!(continuee=='Y' || continuee =='y')){dung=false;cin.clear();}
    }
    
    return 0;
}
