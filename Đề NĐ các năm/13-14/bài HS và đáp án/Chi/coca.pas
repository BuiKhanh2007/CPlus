var fi,fo:text;
    a,b,c,t,s:int64;
begin
  assign(fi,'coca.inp');reset(fi);
  assign(fo,'coca.out');rewrite(fo);
  readln(fi,a,b,c);
  s:=a+b;
  while s>=c do
    begin
      t:=t+s div c;
      s:=s div c+s mod c;
    end;
  writeln(fo,t);
  close(fi);
  close(fo);
end.
