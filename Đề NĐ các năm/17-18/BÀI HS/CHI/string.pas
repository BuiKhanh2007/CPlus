var fi,fo:text;
    i:longint;
    s,x:ansistring;
begin
  assign(fi,'string.inp');reset(fi);
  assign(fo,'string.out');rewrite(fo);
  readln(fi,s);
  while s[1]=' ' do delete(s,1,1);
  while s[length(s)]=' ' do delete(s,length(s),1);
  i:=1;
  while i<length(s) do
    if (s[i]=' ')and(s[i+1]=' ')then delete(s,i,1) else i:=i+1;
  s:=s+' ';
  while s<>'' do
    begin
      i:=pos(' ',s);
      if i-1>length(x) then x:=copy(s,1,i-1);
      delete(s,1,i);
    end;
  writeln(fo,x);
  close(fi);
  close(fo);
end.