#include <iostream>
#include <vector>
#include <string>
#include <fstream>
#include <bits/stdc++.h>

int stt=1;
using namespace std;
void coutfile(string khanh,int stt)
    {
        ifstream inputFile(khanh);
        if (!inputFile) {
            cerr << "Khong the mo file "<<khanh<< '\n';
            return;
        }
        string line;
        while (getline(inputFile, line)) {
            cout<<stt<<"."<<line.substr(0,line.find("/"))<<'\n';
            stt++;
        }
    }
void findFile(string khanh,int stt,int chose1)
    {
        ifstream inputFile(khanh);
        string line;
        while (getline(inputFile, line)) {
            if (stt==chose1)
            {
                cout<<line; break;
            }
            stt++;
        }
        cout<<"\n";
    }
class danhsach
{
public:
    string name,classes,math,philology,english;
    danhsach()
    {
        this->name = "Chua Co Ten";
        this->math = "0";
        this->classes="0";
        this->philology="0";
        this->english="0";
    }

    void addname(string khanh)
    {
        ofstream outputFile(khanh,ios::app);
        outputFile<<name<<" ";
        outputFile<<"Lop: "<<classes<<'/';
        outputFile<<"Toan: "<<math<<" ";
        outputFile<<"Van: "<<philology<<' ';
        outputFile<<"Tieng Anh: "<<english<<endl;

    }
};
int main()

{
    char chose='0';
    while (true)
    {
        system("cls");
        cout<<"\033[1;33m###########################\033[0m\n";
        cout<<"\033[1;33m#\033[0m"<<"\033[1;32mPhan Mem Quan Li Danh Ba!\033[0m"<<"\033[1;33m#\033[0m"<<'\n';
        cout<<"\033[1;33m#\033[0m"<<"\033[1;34m1.Mo Danh Ba\033[0m"<<"\033[1;33m             #\033[0m"<<'\n';
        cout<<"\033[1;33m#\033[0m"<<"\033[1;34m2.Chuc Nang\033[0m"<<"\033[1;33m              #\033[0m"<<'\n';
        cout<<"\033[1;33m#\033[0m"<<"\033[1;34m3.Thoat\033[0m"<<"\033[1;33m                  #\033[0m"<<'\n';
        cout<<"\033[1;33m###########################\033[0m\n";
        cout<<"\033[1;31mNhap: \033[0m";
        cin>>chose;
        switch (chose)
        {
        case '1':
            coutfile("khanh.txt",stt);
            int chose1;
            cout<<"Chon so thu tu(Nhap 0 De Thoat): ";
            cin>>chose1;
            comeback:
            if (chose1==0) break;
            else findFile("khanh.txt",stt,chose1);
            cout<<"Tim Tiep?(0 de thoat): ";
            cin>>chose1;
            goto comeback;
            break;
        case '2':
            {
                string name, classes, math, philology, english;
            start:
                cout <<  "\033[1;37mNhap Theo Thu Tu: Ho Ten,Lop,Toan,Van,Tieng Anh:\033[0m";
                cin >> name >> classes >> math >> philology >> english;
                danhsach a;
                a.name = name;
                a.classes = classes;
                a.math = math;
                a.philology = philology;
                a.english = english;
                cout << "\033[1;37mCan Sua Lai Khong?(Y/N)\033[0m";
                char sua;
                cin >> sua;
                if (sua == 'y' || sua == 'Y') goto start;
                a.addname("khanh.txt");
                break;}
        case '3':
            exit(0);
        default:
            cout<<"Vui Long Nhap Lai! ";
            cin.get();
        }
        chose='0';
    }
    return 0;
}
