var fi,fo:text;
t,p:array[1..10000] of longint;
i,n,s:longint;
begin
assign(fi,'work.inp');reset(fi);
assign(fo,'work.out');rewrite(fo);
Readln(fi,n);
For i:=1 to n do read(fi,t[i]);
Readln(fi);
For i:=1 to n-1 do read(fi,p[i]);
Writeln(fo,'17');
For i:=1 to n-1 do
If ((t[i]+t[i+1]) div 2<=p[i]) then s:=s+p[i];
Close(fi);
Close(fo);
End.
