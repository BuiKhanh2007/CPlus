type m=array[1..1000000]of longint;
var a,b,c:m;
    d:array[1..1000000] of boolean;
n,i,j,dem:longint;
fi,fo:text;
procedure qsort(l,r:longint;var a,b:m);
var i,j,x,y,z:longint;
   begin
   i:=l; j:=r;
   x:=a[(l+r) div 2];
   repeat
   while a[i]<x do inc(i);
   while a[j]>x do dec(j);
   if not(i>j) then
      begin
      y:=a[i];
      a[i]:=a[j];
      a[j]:=y;
      z:=b[i];
      b[i]:=b[j];
      b[j]:=z;
      inc(i);
      dec(j);
      end;
   until i>j;
   if l<j then qsort(l,j,a,b);
   if i<r then qsort(i,r,a,b);
   end;
begin
assign(fi,'sdb.inp');
assign(fo,'sdb.out');
reset(fi);
rewrite(fo);
readln(fi,n);
for i:=1 to n do
    begin
    readln(fi,a[i]);
    c[i]:=a[i];
    b[i]:=i;
    d[i]:=false;
    end;
qsort(1,n,a,b);
dem:=1; j:=0;
for i:=2 to n do
begin
  if a[i]=a[i-1] then inc(dem)
  else
    begin
     if dem=1 then
       begin
       inc(j);
       d[b[i-1]]:=true;
       end;
     dem:=1;
    end;
end;
if a[n]<>a[n-1] then
     begin
     d[b[n]]:=true;
     inc(j);
     end;
writeln(fo,j);
for i:=1 to n do if d[i]=true then writeln(fo,c[i]);
close(fi);
close(fo);
end.
















