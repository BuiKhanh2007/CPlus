program b1;
var fi,fo:text;
    i,n,d,x:longint;
    a:array[1..10000] of longint;
    function t(x:longint):int64;
    var i:longint;
    begin
     t:=0;
     for i:=1 to trunc(sqrt(x)) do
      if x mod i=0 then t:=t+i+x div i;
     if sqr(trunc(sqrt(x)))=x then t:=t-trunc(sqrt(x));
    end;
begin
 assign(fi,'GHH.inp'); assign(fo,'GHH.out');
 reset(fi); rewrite(fo); readln(fi,n); d:=0;
 for i:=1 to n do
  begin
   readln(fi,x);
   if 2*x<=t(x) then begin d:=d+1; a[d]:=x; end;
  end;
 writeln(fo,d);
 for i:=1 to d do writeln(fo,a[i]);
 close(fi); close(fo);
end.
