var d,i,n:longint;
    a,b:array[1..10000] of longint;
    fi,fo:text;
function t(x:longint):int64;
var j:longint;
begin
 t:=0;
 for j:=1 to trunc(sqrt(x)) do
  if x mod j=0 then t:=t+j+x div j;
 if sqr(trunc(sqrt(x)))=x then t:=t-trunc(sqrt(x));
end;
begin
 assign(fi,'ghh.inp');
 assign(fo,'ghh.out');
 reset(fi);
 rewrite(fo);
 readln(fi,n); d:=0;
 for i:=1 to n do readln(fi,a[i]);
 for i:=1 to n do if a[i]*2<=t(a[i]) then
  begin
   inc(d);
   b[d]:=a[i];
  end;
 writeln(fo,d);
 for i:=1 to d do writeln(fo,b[i]);
 close(fi);
 close(fo);
end.
