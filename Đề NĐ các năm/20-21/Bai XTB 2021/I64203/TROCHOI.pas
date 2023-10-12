program b3;
type c=array[1..10000] of longint;
var fi,fo:text;
    i,n,d,t,j:longint;
    b,e:c;
    a:array[1..10000] of ansistring;
    procedure qs(l,r:longint; var b:c);
    var i,j,x,y:longint; z:ansistring;
    begin
     i:=l; j:=r;
     x:=b[(l+r) div 2];
     repeat
      while b[i]<x do inc(i);
      while b[j]>x do dec(j);
      if not(i>j) then
      begin
       y:=b[i]; b[i]:=b[j]; b[j]:=y;
       y:=e[i]; e[i]:=e[j]; e[j]:=y;
       z:=a[i]; a[i]:=a[j]; a[j]:=z;
       inc(i); dec(j);
      end;
     until i>j;
     if l<j then qs(l,j,b);
     if i<r then qs(i,r,b);
    end;
    procedure qs1(l,r:longint; var e:c);
    var i,j,x,y:longint; z:ansistring;
    begin
     i:=l; j:=r;
     x:=e[(l+r) div 2];
     repeat
      while e[i]<x do inc(i);
      while e[j]>x do dec(j);
      if not(i>j) then
      begin
       y:=e[i]; e[i]:=e[j]; e[j]:=y;
       z:=a[i]; a[i]:=a[j]; a[j]:=z;
       inc(i); dec(j);
      end;
     until i>j;
     if l<j then qs1(l,j,e);
     if i<r then qs1(i,r,e);
    end;
begin
 assign(fi,'TROCHOI.inp'); assign(fo,'TROCHOI.out');
 reset(fi); rewrite(fo); readln(fi,n); d:=1;
 for i:=1 to n do
 begin
  readln(fi,a[i]); t:=0;
  for j:=1 to length(a[i]) do if a[i][j] in ['0'..'9'] then t:=t+1;
  b[i]:=t; e[i]:=i;
 end;
 qs(1,n,b);
 for i:=1 to n-1 do begin
   if b[i]=b[i+1] then d:=d+1
    else if d>1 then begin
     qs1(i-d+1,i,e);
     d:=1; end else d:=1;
   if (i=n-1) and (b[i]=b[i+1]) then qs1(i-d+2,i+1,e); end;
 if d=n then qs1(1,n,e);
 for i:=1 to n do writeln(fo,a[i]);
 close(fi); close(fo);
end.