var fi,fo:text;
u,v,d,i:longint;
Function nto(n:longint):boolean;
var i:longint;
Begin
If n<2 then exit(false);
For i:=2 to trunc(sqrt(n)) do
If n mod i=0 then exit(false);
exit(true);
End;
Function ktra(k:longint):boolean;
Begin
If (k<1) then exit(false);
If (k>=2) and (k<=9) and nto(k) then exit(true);
If k>=10 then
Begin
While nto(k) do k:=k div 10;
If k=0 then exit(true);
End;
exit(false);
End;
Begin
assign(fi,'snto.inp');reset(fi);
assign(fo,'snto.out');rewrite(fo);
Readln(fi,u,v);
d:=0;
For i:=u to v do
If ktra(i) then d:=d+1;
Writeln(fo,d);
CLose(fi);
Close(fo);
End.
