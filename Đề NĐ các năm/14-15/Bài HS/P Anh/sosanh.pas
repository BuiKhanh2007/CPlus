var fi,fo:text;
a,b:int64;
Begin
assign(fi,'sosanh.inp');reset(fi);
assign(fo,'sosanh.out');rewrite(fo);
Readln(fi,a,b);
If (a>b) then writeln(fo,'>');
If (a<b) then writeln(fo,'<');
If (a=b) then writeln(fo,'=');
Close(fi);
Close(fo);
End.