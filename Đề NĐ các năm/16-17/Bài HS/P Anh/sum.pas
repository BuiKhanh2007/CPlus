var fi,fo:text;
du,n,k,b,d,i,s:longint;
a:array[1..10000] of longint;
Begin
assign(fi,'sum.inp');reset(fi);
assign(fo,'sum.out');rewrite(fo);
Readln(fi,n,k,b);
For i:=1 to n do readln(fi,a[i]);
du:=b mod n;
If (du=0) then du:=n;
s:=0;
d:=0;
Repeat
s:=s+a[du];
du:=du+1;
d:=d+1;
If (du>n) then du:=1;
until d=k;
Writeln(fo,s);
Close(fi);
CLose(fo);
End.
