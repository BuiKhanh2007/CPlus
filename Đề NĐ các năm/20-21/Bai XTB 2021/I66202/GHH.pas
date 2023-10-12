var fi,fo:text;
    b:array[0..10000]of longint;
    n,a,d,i:longint;
function ghh(a:longint):boolean;
var i,s:longint;
  begin
    s:=0;
    for i:=2 to trunc(sqrt(a)) do
    if a mod i=0 then s:=s+i+a div i;
    if trunc(sqrt(a))=sqrt(a) then s:=s-trunc(sqrt(a));
    s:=s+1;
    if a<=s then exit(true)else exit(false);
  end;
begin
  assign(fi,'GHH.inp');reset(fi);
  assign(fo,'GHH.out');rewrite(fo);
  readln(fi,n);
  for i:=1 to n do
    begin
      readln(fi,a);
      if ghh(a) then
        begin
          d:=d+1;
          b[d]:=a;
        end;
    end;
  writeln(fo,d);
  for i:=1 to d do writeln(fo,b[i]);
  close(fi);
  close(fo);
end.
