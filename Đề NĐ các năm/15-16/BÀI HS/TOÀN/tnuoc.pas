VAR s,n:Qword;
    fi,fo:text;
BEGIN
 Assign(fi,'tnuoc.inp');Reset(fi);
 Assign(fo,'tnuoc.out');Rewrite(fo);
 Readln(fi,n);
 If n<=16 then s:=n*7000 else
  If n<=50 then s:=16*7000+(n-16)*8500 else s:=16*7000+34*8500+(n-50)*10000;
 Writeln(fo,s);
 Close(fi);
 Close(fo);
END.
