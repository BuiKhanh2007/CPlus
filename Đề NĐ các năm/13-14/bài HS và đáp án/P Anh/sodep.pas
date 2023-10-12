var fi,fo:text;
a:array[1..200000000] of longint;
n,i,tong:longint;
Function d(n:longint):longint;
var i:longint;
Begin
d:=0;
For i:=1 to trunc(sqrt(n)) do
If (n mod i=0) then
If (n div i<>i) then d:=d+2
else d:=d+1;
Exit(d);
End;

Begin
assign(fi,'sodep.inp');reset(fi);
assign(fo,'sodep.out');rewrite(fo);
Readln(fi,n);
For i:=1 to n do
Begin
Readln(fi,a[i]);
tong:=d(a[i]);
If (a[i] mod tong=0) then writeln(fo,'Co')
else writeln(fo,'Khong');
End;
Close(fi);
Close(fo);
End.