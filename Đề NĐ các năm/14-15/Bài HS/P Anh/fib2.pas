var fi,fo:text;
s:ansistring;
n,t,k,i,d:longint;
f:array[0..1000000] of ansistring;
Begin
assign(fi,'fib2.inp');reset(fi);
assign(fo,'fib2.out');rewrite(fo);
Readln(fi,t);
While not seekEOF(fi) do
Begin
Readln(fi,n,k);
f[0]:='a';
f[1]:='b';
d:=0;
i:=2;
s:='0';
While (i>1) and ((i<=n) or (length(s)<k)) do
Begin
f[i]:=f[i-2]+f[i-1];
S:=f[i];
i:=i+1;
End;
For i:=1 to length(s) do
If i<=k then
If (s[i]='a') then d:=d+1;
If (n=0) then writeln(fo,1);
If (n=1) then writeln(fo,0);
If (n>1) then Writeln(fo,d);
End;
Close(fi);
Close(fo);
End.
