program b2;
type c=array[1..1000000] of longint;
var fi,fo:text;
    i,n,d,t,j:longint;
    a,b,e,f:c;
    procedure qs(l,r:longint; var a:c);
    var i,j,x,y:longint;
    begin
     i:=l; j:=r;
     x:=a[(l+r) div 2];
     repeat
      while a[i]>x do inc(i);
      while a[j]<x do dec(j);
      if not(i>j) then
      begin
       y:=a[i]; a[i]:=a[j]; a[j]:=y;
       y:=b[i]; b[i]:=b[j]; b[j]:=y;
       inc(i); dec(j);
      end;
     until i>j;
     if l<j then qs(l,j,a);
     if i<r then qs(i,r,a);
    end;
begin
 assign(fi,'SDB.inp'); assign(fo,'SDB.out');
 reset(fi); rewrite(fo); readln(fi,n); t:=0; d:=1;
 for i:=1 to n do begin readln(fi,a[i]); b[i]:=i; f[i]:=a[i];end;
 qs(1,n,a);
 for i:=1 to n-1 do
  begin
   if a[i]=a[i+1] then inc(d)
    else if d=1 then begin inc(t); e[t]:=b[i]; d:=1; end else d:=1;
  end;
 if a[n]<>a[n-1] then begin inc(t); e[t]:=b[n]; end;
 writeln(fo,t);
 if t>1 then qs(1,t,e);
 for i:=t downto 1 do writeln(fo,f[e[i]]);
 close(fi); close(fo);
end.
