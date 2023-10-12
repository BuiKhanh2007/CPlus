var fi,fo:text;
d,m,h,i,q,a,b,j,n:longint;
s,x:ansistring;
k:array[1..100000] of longint;
begin
assign(fi,'dembi.inp');reset(fi);
assign(fo,'dembi.out');rewrite(fo);
Readln(fi,n,q);
s:='';
For i:=1 to n do
Begin
readln(fi,k[i]);
Str(k[i],x);
s:=s+x;
End;
For j:=n+1 to n+q do
Begin
Readln(fi,a,b);
d:=0;
m:=0;
h:=0;
For i:=a to b do
Begin
If s[i]='1' then d:=d+1;
If s[i]='2' then m:=m+1;
If (s[i]='3') then h:=h+1;
End;
Writeln(fo,d,' ',m,' ',h);
End;
Close(fi);
Close(fo);
End.