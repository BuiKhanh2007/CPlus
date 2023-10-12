var fi,fo:text;
n,i:longint;
a:array[1..100000] of longint;
Function kt(n:longint):boolean;
var h:real;
Begin
h:=sqrt(n)-trunc(sqrt(n));
If (h=0) then exit(true)
else exit(false);
End;
Begin
assign(fi,'cphuong.inp');reset(fi);
assign(fo,'cphuong.out');rewrite(fo);
Readln(fi,n);
For i:=1 to n do
Begin
Readln(fi,a[i]);
If (kt(a[i])) then writeln(fo,'1')
else writeln(fo,'0');
End;
Close(fi);
Close(fo);
End.