var fi,fo:text;
a,c,b:array[0..1000000] of longint;
i,n,d,j:longint;
Procedure qs(d,c:longint);
var i,j,tg,g:longint;
Begin
g:=a[(d+c) div 2];
i:=d;
j:=c;
Repeat
While (i<=n) and (a[i]<g) do i:=i+1;
While (j>=0) and (a[j]>g) do j:=j-1;
If (i<=j) then
Begin
tg:=a[i];
a[i]:=a[j];
a[j]:=tg;
i:=i+1;
j:=j-1;
End;
until i>j;
If (i<c) then qs(i,c);
If (d<j) then qs(d,j);
End;
Begin
assign(fi,'sdb.inp');reset(fi);
assign(fo,'sdb.out');rewrite(fo);
Readln(fi,n);
For i:=1 to n do
Begin
readln(fi,a[i]);
b[i]:=a[i];
End;
qs(1,n);
a[0]:=0;
a[n+1]:=0;
For i:=1 to n do
if (a[i]<>a[i-1]) and (a[i]<>a[i+1]) then
Begin
d:=d+1;
c[d]:=a[i];
End;
Writeln(fo,d);
For i:=1 to n do
For j:=1 to d do
If (b[i]=c[j]) then writeln(fo,c[j]);
Close(fi);
Close(fo);
End.
