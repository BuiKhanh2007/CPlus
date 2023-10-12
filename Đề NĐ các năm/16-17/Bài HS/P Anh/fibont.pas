var fi,fo:text;
i,n:longint;
function nto(n:longint):boolean;
var i:longint;
Begin
If n<2 then exit(false);
For i:=2 to trunc(sqrt(n)) do
If (n mod i=0) then exit(false);
exit(true);
End;
Function fibo(n:longint):longint;
begin
If n<=2 then fibo:=1
else fibo:=fibo(n-1)+fibo(n-2);
End;
begin
assign(fi,'fibont.inp');reset(fi);
assign(fo,'fibont.out');rewrite(fo);
Readln(fi,n);
For i:=1 to 40 do
If (fibo(i)<=n) then
If (nto(fibo(i))) then writeln(fo,fibo(i));
Close(fo);
Close(fi);
End.
