program b4;
type c=array[1..1000000] of longint;
var fi,fo:text;
    t,p,q:c;
    i,n,d,m,d1:longint;
    procedure qs(l,r:longint; var q:c);
    var i,j,x,y:longint;
    begin
     i:=l; j:=r;
     x:=q[(l+r) div 2];
     repeat
      while q[i]>x do inc(i);
      while q[j]<x do dec(j);
      if not(i>j) then
      begin
       y:=q[i]; q[i]:=q[j]; q[j]:=y;
       inc(i); dec(j);
      end;
     until i>j;
     if l<j then qs(l,j,q);
     if i<r then qs(i,r,q);
    end;
begin
 assign(fi,'WORK.inp'); assign(fo,'WORK.out');
 reset(fi); rewrite(fo); readln(fi,n); d:=0;
 for i:=1 to n do begin read(fi,t[i]); d:=d+t[i]; end; readln(fi);
 for i:=1 to n-1 do begin read(fi,p[i]); d1:=d1+p[i]; end;
 for i:=1 to n-1 do q[i]:=t[i]+t[i+1]-p[i];
 qs(1,n-1,q); m:=n div 2;
 for i:=1 to m do d:=d-q[i];
 write(fo,d);
 close(fi); close(fo);
end.
