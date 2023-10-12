var fi,fo:text;
    a,b:array[0..1000001]of int64;
    vt:array[0..1000000]of longint;
    i,j:longint;
    f:array[0..1000000]of boolean;
    sl,d,n:int64;
procedure qs(d,c:longint);
var i,j,g,tg:longint;
  begin
    g:=a[(d+c)div 2];
    i:=d;
    j:=c;
    repeat
      while(i<=n)and(a[i]<g)do i:=i+1;
      while(j>=0)and(a[j]>g) do j:=j-1;
      if i<=j then
        begin
          tg:=a[i];
          a[i]:=a[j];
          a[j]:=tg;
          tg:=vt[i];
          vt[i]:=vt[j];
          vt[j]:=tg;
          i:=i+1;
          j:=j-1;
        end;
    until i>j;
    if i<c then qs(i,c);
    if d<j then qs(d,j);
  end;
begin
  assign(fi,'SDB.inp');reset(fi);
  assign(fo,'SDB.out');rewrite(fo);
  readln(fi,n);
  for i:=1 to n do
    begin
      readln(fi,a[i]);
      vt[i]:=i;
    end;
  for i:=1 to n do b[i]:=a[i];
  for i:=1 to n do f[i]:=true;
  qs(1,n);
  n:=n+1;
  a[n]:=a[n-1]+1;
  d:=1;
  for i:=1 to n-1 do
  if a[i]=a[i+1] then d:=d+1
  else
    begin
      if d=1 then
        begin
          sl:=sl+1;
          f[vt[i]]:=false;
        end;
      d:=1;
    end;
  writeln(fo,sl);
  for i:=1 to n-1 do
  if f[i]=false then writeln(fo,b[i]);
  close(fi);
  close(fo);
end.
