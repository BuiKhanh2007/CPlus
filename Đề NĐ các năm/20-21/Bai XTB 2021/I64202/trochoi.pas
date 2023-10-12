type m=array[1..10000]of longint;
     q=array[1..10000]of ansistring;
var s:q; a,c,b:m;
n,i,j,h:longint;
fi,fo:text;
procedure qsort(l,r:longint;var a:m;var s:q;var b:m);
var i,j,x,y,k:longint;
    z:ansistring;
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
      z:=s[i];
      s[i]:=s[j];
      s[j]:=z;
      k:=b[i];
      b[i]:=b[j];
      b[j]:=k;
      inc(i);
      dec(j);
      end;
   until i>j;
   if l<j then qsort(l,j,a,s,b);
   if i<r then qsort(i,r,a,s,b);
   end;
procedure qsort1(l,r:longint;var a:m;var s:q);
var i,j,x,y:longint;
z:ansistring;
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
      z:=s[i];
      s[i]:=s[j];
      s[j]:=z;
      inc(i);
      dec(j);
      end;
   until i>j;
   if l<j then qsort1(l,j,a,s);
   if i<r then qsort1(i,r,a,s);
   end;
begin
assign(fi,'trochoi.inp');
assign(fo,'trochoi.out');
reset(fi);
rewrite(fo);
readln(fi,n);
for i:=1 to n do
     begin
     readln(fi,s[i]);
     b[i]:=i;
     end;
for i:=1 to n do
   begin
   a[i]:=0;
   for j:=1 to length(s[i]) do if s[i][j] in['0'..'9'] then a[i]:=a[i]+1;
   end;
qsort(1,n,a,s,b);
i:=1; j:=0;
while i<=n do
    begin
    while (i+1<=n) and (a[i]=a[i+1]) do
       begin
       inc(j);
       c[j]:=b[i];
       inc(j);
       c[j]:=b[i+1];
       i:=i+2;
       end;
    if j<>0 then qsort1(i,i+j,c,s);
    j:=0; inc(i);
    end;
for h:=1 to n do writeln(fo,s[h]);
close(fi);
close(fo);
end.
