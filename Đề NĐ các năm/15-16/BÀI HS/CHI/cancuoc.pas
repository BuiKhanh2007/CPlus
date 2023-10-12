var fi,fo:text;
    a:array[0..10000]of longint;
    i,n,h:longint;
    s,k:qword;
procedure qs(d,c:longint);
var g,i,j,tg:longint;
  begin
    g:=a[(d+c) div 2];
    i:=d;
    j:=c;
    repeat
      while (i<=n)and(a[i]<g) do i:=i+1;
      while (j>=0) and(a[j]>g) do j:=j-1;
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
  assign(fi,'cancuoc.inp');reset(fi);
  assign(fo,'cancuoc.out');rewrite(fo);
  readln(fi,n);
  for i:=1 to n do read(fi,a[i]);
  qs(1,n);
  for i:=1 to n do
    begin
      k:=a[i];
      h:=n-i+1;
      s:=s+k*h;
    end;
  writeln(fo,s);
  close(fi);
  close(fo);
end.