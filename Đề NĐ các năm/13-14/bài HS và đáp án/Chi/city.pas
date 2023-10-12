var fi,fo:text;
    n,du,i,a,j,d:longint;
    s:ansistring;
    x:array[0..5000]of ansistring;
function ss(a,b:ansistring):boolean;
var i,d:longint;
  begin
    while length(a)<length(b) do a:='0'+a;
    while length(a)>length(b) do b:='0'+b;
    d:=0;
    for i:=1 to length(a) do
      if a[i]<>b[i] then
        begin
          d:=d+1;
          if d>1 then exit(false);
        end;
    exit(true);
  end;
begin
  assign(fi,'city.inp');reset(fi);
  assign(fo,'city.out');rewrite(fo);
  readln(fi,n);
  for i:=1 to n do
    begin
      readln(fi,a);
      s:='';
      while a<>0 do
        begin
          du:=a mod 2;
          a:=a div 2;
          s:=chr(du+48)+s;
        end;
      x[i]:=s;
    end;
  for i:=1 to n-1 do
  for j:=i+1 to n do
    if i=j then d:=d+1
    else if ss(x[i],x[j]) then d:=d+1;
  writeln(fo,d);
  close(fi);
  close(fo);
end.
