var fi,fo:text;
s:int64;
n,i:longint;
b,a:array[0..100000] of int64;
Procedure qs(d,c:int64);
var tg,i,j,g:int64;
Begin
g:=b[(d+c) div 2];
i:=d;
j:=c;
Repeat
While (i<=n) and (b[i]<g) do i:=i+1;
While (j>=0) and (b[j]>g) do j:=j-1;
If (i<=j) then
Begin
tg:=b[i];
b[i]:=b[j];
b[j]:=tg;
i:=i+1;
j:=j-1;
End;
until i>j;
If (i<c) then qs(i,c);
If (d<j) then qs(d,j);
End;
Begin
assign(fi,'cancuoc.inp');reset(fi);
assign(fo,'cancuoc.out');rewrite(fo);
Readln(fi,n);
For i:=1 to n do read(fi,b[i]);
qs(1,n);
For i:=1 to n do
Begin
a[i]:=a[i-1]+b[i];
s:=s+a[i];
End;
Writeln(fo,s);
Close(fi);
Close(fo);
End.