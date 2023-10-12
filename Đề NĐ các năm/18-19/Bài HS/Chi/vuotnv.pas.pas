var fi,fo:text;
    a,h,f:array[0..20000]of longint;
    i,n,m,k,max,j:longint;
procedure qs(d,c:longint);
var g,i,j,tg:longint;
  begin
    g:=h[(d+c) div 2];
    i:=d;
    j:=c;
    repeat
      while (i<=n)and(h[i]<g)do i:=i+1;
      while (j>=0)and(h[j]>g)do j:=j-1;
      if i<=j then
        begin
          tg:=h[i];
          h[i]:=h[j];
          h[j]:=tg;
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
  assign(fi,'vuotnv.inp');reset(fi);
  assign(fo,'vuotnv.out');rewrite(fo);
  readln(fi,n,k);
  for i:=1 to n do read(fi,h[i]);
  for i:=1 to n do read(fi,a[i]);
  qs(1,n);
  for i:=1 to n do f[i]:=a[i];
  for i:=2 to n do
    begin
      m:=0;
      for j:=1 to i do
        if (h[i]-h[j]=k)and(f[j]>m)then

        m:=f[j];
      f[i]:=m+a[i];
      if f[i]>max then max:=f[i];
    end;
  writeln(fo,max);
  close(fi);
  close(fo);
end.