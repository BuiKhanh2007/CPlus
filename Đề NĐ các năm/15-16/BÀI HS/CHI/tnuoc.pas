var fi,fo:text;
    n,s:qword;
begin
  assign(fi,'tnuoc.inp');reset(fi);
  assign(fo,'tnuoc.out');rewrite(fo);
  readln(fi,n);
  if n<=16 then s:=n*7000
  else if n<=50 then s:=112000+(n-17+1)*8500
  else s:=401000+(n-51+1)*10000;
  writeln(fo,s);
  close(fi);
  close(fo);
end.
