var fi,fo:text;
    a:array[0..30000]of longint;
    n,i:longint;
procedure qs(d,c:longint);
var i,j,g,tg:longint;
  begin
    g:=a[(d+c)div 2];
    i:=d;
    j:=c;
    repeat
      while (i<=n)and(a[i]<g)do i:=i+1;
      while (j>=0)and(a[j]>g) do j:=j-1;
      if i<=j then
        begin
          tg:=a[i];
          a[i]:=a[j];
          a[j]:=tg;
          i:=i+1;
          j:=j-1;
        end;
    until i>j;
    if i<c then qS(i,c);
    if d<j then qs(d,j);
  end;
begin
  assign(fi,'manv.inp');reset(fi);
  assign(fo,'manv.out');rewrite(fo);
  readln(fi,n);
  for i:=1 to n do readln(fi,a[i]);
  qs(1,n);
  for i:=1 to n do
  if a[i]>i then break;
  if (i=n)and(a[i]=n) then writeln(fo,n+1)else writeln(fo,i);
  close(fi);
  close(fo);
end.