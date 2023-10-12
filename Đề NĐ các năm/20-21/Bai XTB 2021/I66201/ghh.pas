var fi,fo:text;
i,n,d,b:longint;
a:array[1..100000] of longint;
Function t(n:longint):longint;
var s:longint;
Begin
s:=0;
For i:=1 to trunc(sqrt(n)) do
If (n mod i=0) and (n div i<>i) then s:=s+i+n div i
else if (n div i=i) and (n mod i=0) then s:=s+i;
exit(s);
End;
Begin
assign(fi,'ghh.inp');reset(fi);
assign(fo,'ghh.out');rewrite(fo);
Readln(fi,n);
d:=0;
While not seekEOF(fi) do
Begin
Readln(fi,b);
If (2*b<=t(b)) then
Begin
d:=d+1;
a[d]:=b;
End;
End;
Writeln(fo,d);
For i:=1 to d do writeln(fo,a[i]);
Close(fi);
Close(fo);
End.
