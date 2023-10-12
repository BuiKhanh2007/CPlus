var fi,fo:text;
m,n,i,k,d,j:longint;
Function kt(n:longint):boolean;
Begin
If ((sqr(n) mod 10)=n) then exit(true);
exit(false);
End;
begin
assign(fi,'lucasa.inp');reset(fi);
assign(fo,'lucasa.out');rewrite(fo);
Readln(fi,k);
For i:=1 to k do
Begin
Readln(fi,m,n);
d:=0;
For j:=m to n do
If kt(j) then d:=d+1;
Writeln(fo,d);
End;
Close(fi);
close(fo);
End.