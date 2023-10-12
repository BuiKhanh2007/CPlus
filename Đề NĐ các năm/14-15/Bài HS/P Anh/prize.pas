var fi,fo:text;
a,b,du,max:longint;
c:int64;
Begin
assign(fi,'prize.inp');reset(fi);
assign(fo,'prize.out');rewrite(fo);
Readln(fi,a);
Readln(fi,b);
c:=a+b;
Writeln(fo,c);
max:=-maxlongint;
Repeat
du:=c mod 10;
If (max<du) then max:=du;
c:=c div 10;
until c=0;
Writeln(fo,max);
Close(fi);
Close(fo);
End.