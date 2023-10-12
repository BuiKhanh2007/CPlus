var fi,fo:text;
    max,min,i,n,vt,k:longint;
    f:array[0..10000]of ansistring;
    a:array[0..10000]of longint;
    x:ansistring;
begin
  assign(fi,'TROCHOI.inp');reset(fi);
  assign(fo,'TROCHOI.out');rewrite(fo);
  readln(fi,n);
  for k:=1 to n do
    begin
      readln(fi,x);
      f[k]:=x;
      i:=1;
      while i<=length(x) do
        begin
          if (ord(x[i])>=48)and(ord(x[i])<=57) then i:=i+1
          else delete(x,i,1);
        end;
      a[k]:=length(x);
      if length(x)>max then max:=length(x);
    end;
  min:=max;
  while min<max+1 do
    begin
      min:=max+1;
      for i:=1 to n do
      if a[i]<min then
        begin
          vt:=i;
          min:=a[i];
        end;
      if min<max+1 then
        begin
          writeln(fo,f[vt]);
          a[vt]:=max+1;
        end;
    end;
  close(fi);
  close(fo);
end.


