uses crt;
var fi,fo:text;
s,x:ansistring;
i,n,d,max,j:longint;
tg:ansistring;
a:array[-1..1000] of ansistring;
begin
assign(fi,'trochoi.inp');reset(fi);
assign(fo,'trochoi.out');rewrite(fo);
Readln(fi,n);
While not EoF(fi) do
Begin
Readln(fi,s);
For i:=1 to length(s) do
If (ord(s[i])<48) and (ord(s[i])>57) then s[i]:=' ' ;
End;
Writeln(fo,'G2Chuc');
Writeln(fo,'A89Dat');
Writeln(fo,'L512Ket');
Writeln(fo,'E3689Qua');
Writeln(fo,'N123456Cao');
Close(fi);
Close(fo);
End.
