var fi,fo:text;
    i,n,f1,f2,f:longint;
function nto(n:longint):boolean;
var i:longint;
  begin
    nto:=true;
    for i:=2 to trunc(sqrt(n)) do
      if n mod i=0 then
        begin
          nto:=false;
          break;
        end;
  end;
begin
  assign(fi,'fibont.inp');reset(fi);
  assign(fo,'fibont.out');rewrite(fo);
  readln(fi,n);
  f1:=1;
  f2:=1;
  repeat
    f:=f1+f2;
    if f<=n then
      if nto(f)=true then writeln(fo,f);
    f1:=f2;
    f2:=f;
  until f>n;
  close(fi);
  close(fo);
end.
