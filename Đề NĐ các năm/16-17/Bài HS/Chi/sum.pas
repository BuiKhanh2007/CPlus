var fi,fo:text;
    a:array[0..10000]of longint;
    k,i,n,b:longint;
    s:qword;
begin
  assign(fi,'sum.inp');reset(fi);
  assign(fo,'sum.out');rewrite(fo);
  readln(fi,n,k,b);
  for i:=1 to n do readln(fi,a[i]);
  i:=b mod n;
  if i=0 then i:=n;
  k:=k-1;
  s:=a[i];
  while k>0 do
    begin
      i:=i+1;
      if i>n then i:=1;
      s:=s+a[i];
      k:=k-1;
    end;
  writeln(fo,s);
  close(fi);
  close(fo);
end.

