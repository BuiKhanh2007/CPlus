var fi,fo:text;
    a,b,c:array[0..100000]of longint;
    i,x,y,n,q:longint;
begin
  assign(fi,'dembi.inp');reset(fi);
  assign(fo,'dembi.out');rewrite(fo);
  readln(fi,n,q);
  a[0]:=0;
  b[0]:=0;
  c[0]:=0;
  for i:=1 to n do
    begin
      readln(fi,x);
      if x=1 then
        begin
          a[i]:=a[i-1]+1;
          b[i]:=b[i-1];
          c[i]:=c[i-1];
        end;
      if x=2 then
        begin
          b[i]:=b[i-1]+1;
          a[i]:=a[i-1];
          c[i]:=c[i-1];
        end;
      if x=3 then
        begin
          c[i]:=c[i-1]+1;
          b[i]:=b[i-1];
          a[i]:=a[i-1];
        end;
    end;
  for i:=1 to q do
    begin
      readln(fi,x,y);
      write(fo,a[y]-a[x-1],' ',b[y]-b[x-1],' ',c[y]-c[x-1]);
      writeln(fo);
    end;
  close(fi);
  close(fo);
end.