var fi,fo:text;
    a:array[0..100000]of longint;
    b:array[0..100000] of int64;
    t,max,i,j,n:longint;
begin
  assign(fi,'sach.inp');reset(fi);
  assign(fo,'sach.out');rewrite(fo);
  readln(fi,n,t);
  for i:=1 to n do read(fi,a[i]);
  for i:=1 to n do b[i]:=b[i-1]+a[i];
  for i:=0 to n-1 do
    for j:=i+1 to n do
      if (b[j]-b[i])<=t then
        begin
          if max<(j-i) then max:=j-i;
        end
      else break;
  writeln(fo,max);
  close(fi);
  close(fo);
end.