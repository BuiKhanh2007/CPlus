var fi,fo:text;
a,b,c,lc,d:int64;
Begin
assign(fi,'coca.inp');reset(fi);
assign(fo,'coca.out');rewrite(fo);
Readln(fi,a,b,c);
lc:=a+b;
d:=0;
While (lc>=c) do
Begin
        d:=d+lc div c ;
        lc:=lc div c+lc mod c;
End;
Writeln(fo,d);
CLose(fi);
CLose(fo);
End.


