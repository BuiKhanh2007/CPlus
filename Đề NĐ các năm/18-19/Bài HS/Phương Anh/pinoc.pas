var fi,fo:text;
b:array[1..1000000] of int64;
n,m,i,mx,j:longint;
Procedure qs(d,c:longint);
var i,j,tg,g:longint;
Begin
g:=b[(d+c) div 2];
i:=d;
j:=c;
Repeat
While (i<=n) and (b[i]>g) do i:=i+1;
While (j>=0) and (b[j]<g) do j:=j-1;
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
assign(fi,'pinoc.inp');reset(fi);
assign(fo,'pinoc.out');rewrite(fo);
Readln(fi,n,m);
For i:=1 to n do read(fi,b[i]);
qs(1,n);
mx:=0;
b[n+1]:=0;
For i:=2 to n+1 do
Begin
mx:=mx+(b[i-1]-b[i])*(i-1);
If mx>=m then break;
End;
j:=b[i];
While (mx>m) do
Begin
j:=j+1;
mx:=mx-(i-1);
End;
If (mx=m)then writeln(fo,j);
If (mx<m) then writeln(fo,j-1);
Close(fi);
CLose(fo);
End.
