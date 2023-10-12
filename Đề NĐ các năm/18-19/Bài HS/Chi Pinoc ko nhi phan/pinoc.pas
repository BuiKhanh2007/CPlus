var fi,fo:text;
    n,i,s,m,k:longint;
    a:array[0..1000000]of longint;
procedure qs(d,c:longint);
var i,j,g,tg:longint;
  begin
    g:=a[(d+c)div 2];
    i:=d;
    j:=c;
    repeat
      while (i<=n)and(a[i]>g) do i:=i+1;
      while (j>=0)and(a[j]<g) do j:=j-1;
      if i<=j then
        begin
          tg:=a[i];
          a[i]:=a[j];
          a[j]:=tg;
          i:=i+1;
          j:=j-1;
        end;
    until i>j;
    if i<c then qs(i,c);
    if d<j then qs(d,j);
  end;
begin
  assign(fi,'pinoc.inp');reset(fi);
  assign(fo,'pinoc.out');rewrite(fo);
  readln(fi,n,m);
  for i:=1 to n do read(fi,a[i]);
  qs(1,n);
  for i:=2 to n do
    begin
      s:=s+(a[i-1]-a[i])*(i-1);
      if s=m then writeln(fo,a[i])
      else if s>m then
        begin
          k:=a[i]+(s-m)div(i-1);
          writeln(fo,k);
          break;
        end;
    end;
  close(fi);
  close(fo);
end.

