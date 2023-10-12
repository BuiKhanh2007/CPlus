var fi,fo:text;
    i,n,t:longint;
begin
  assign(fi,'cphuong.inp');reset(fi);
  assign(fo,'cphuong.out');rewrite(fo);
  readln(fi,n);
  for i:=1 to n do
    begin
      readln(fi,t);
      if trunc(sqrt(t))=sqrt(t) then writeln(fo,1) else writeln(fo,0);
    end;
  close(fi);
  close(fo);
end.