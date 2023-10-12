var fi,fo:text;
d,a,b,i,j,k:longint;
Function t(a:longint):boolean;
var b,c,i:longint;
s,x,m:ansistring;
Begin
b:=sqr(a);
STR(b,s);
STR(a,x);
c:=length(x);
For i:=length(s) downto(length(s)-c+1) do
m:= s[i]+m;
If m=x then exit(true);
exit(false);
End;
begin
assign(fi,'lucasa.inp');reset(fi);
assign(fo,'lucasa.out');rewrite(fo);
Readln(fi,k);
For i:=1 to k do
Begin
d:=0;
Readln(fi,a,b);
For j:=a to b do
If t(j) then d:=d+1;
Writeln(fo,d);
End;
Close(fi);
Close(fo);
End.