var fi,fo:text;
    i,n,max,kq:longint;
    a,b:array[0..100000]of longint;
begin
  assign(fi,'submax.inp');reset(fi);
  assign(fo,'submax.out');rewrite(fo);
  readln(fi,n);
  for i:=1 to n do readln(fi,a[i]);
  b[1]:=a[1];
  for i:=2 to n do b[i]:=b[i-1]+a[i];
  kq:=-maxlongint;
  max:=b[n];
  for i:=n downto 0 do
    begin
      if kq<max-b[i] then kq:=max-b[i];
      if max<b[i] then max:=b[i];
    end;
  writeln(fo,kq);
  close(fi);
  close(fo);
end.