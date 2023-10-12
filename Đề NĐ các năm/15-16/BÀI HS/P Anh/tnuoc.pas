var fi,fo:text;
n:int64;
begin
assign(fi,'tnuoc.inp');reset(fi);
assign(fo,'tnuoc.out');rewrite(fo);
Readln(fi,n);
If (n<=16) then writeln(fo,7000*n);
If (17<=n) and (n<=50) then writeln(fo,7000*16+(n-16)*8500);
If (n>=51) then writeln(fo,7000*16+8500*34+(n-50)*10000);
Close(fi);
CLose(fo);
End.