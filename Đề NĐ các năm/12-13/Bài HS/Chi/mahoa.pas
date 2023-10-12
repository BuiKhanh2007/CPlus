var fi,fo:text;
    s:ansistring;
    k,h,i:longint;
begin
  assign(fi,'mahoa.inp');reset(fi);
  assign(fo,'mahoa.out');rewrite(fo);
  readln(fi,k);
  while not seekeof(fi) do
    begin
      readln(fi,s);
      for i:=1 to length(s) do
      if s[i]<>' ' then
        begin
          h:=ord(s[i])-96+k;
          s[i]:=chr(h+96);
        end;
      writeln(fo,s);
    end;
  close(fi);
  close(fo);
end.