var fi,fo:text;
    n,m,d,c,i,s,t:longint;
    a:array[0..1000000]of longint;
function kt(s:longint):boolean;
var i:longint;
t: int64;
  begin
    t:=0;
    for i:=1 to n do
      if s<a[i] then t:=t+a[i]-s;
    if t>=m then exit(true) else exit(false);
  end;
begin
  assign(fi,'pinoc.inp');reset(fi);
  assign(fo,'pinoc.out');rewrite(fo);
  readln(fi,n,m);
  for i:=1 to n do read(fi,a[i]);
  c:=a[1];
  for i:=2 to n do
  if a[i]>c then c:=a[i];
  d:=0;
  while d<=c do
    begin
      s:=(d+c)div 2;
      if kt(s)=true then
        begin
          t:=s;
          d:=s+1
        end
      else c:=s-1;
    end;
  writeln(fo,t);
  close(fi);
  close(fo);
end.


