var a,b:array[1..10000] of longint;
    c:array[1..10000] of ansistring;
    fo,fi:text;
    n,d:int64;
    i,j:longint;
procedure qsort(l,r:longint);
var i,j,x,y:longint;
    z:ansistring;
begin
 i:=l;
 j:=r;
 x:=a[(l+r) div 2];
 repeat
  begin
   while a[i]<x do inc(i); while a[j]>x do dec(j);
   if i<=j then
    begin
     y:=a[i]; a[i]:=a[j]; a[j]:=y;
     y:=b[i]; b[i]:=b[j]; b[j]:=y;
     z:=c[i]; c[i]:=c[j]; c[j]:=z;
     inc(i); dec(j);
    end;
  end;
 until i>j;
 if l<j then qsort(l,j); if i<r then qsort(i,r);
end;
procedure qsort1(l,r:longint);
var i,j,x,y:longint;
    z:ansistring;
begin
 i:=l;
 j:=r;
 x:=b[(l+r) div 2];
 repeat
  begin
   while b[i]<x do inc(i); while b[j]>x do dec(j);
   if i<=j then
    begin
     y:=b[i]; b[i]:=b[j]; b[j]:=y;
     y:=a[i]; a[i]:=a[j]; a[j]:=y;
     z:=c[i]; c[i]:=c[j]; c[j]:=z;
     inc(i); dec(j);
    end;
  end;
 until i>j;
 if l<j then qsort1(l,j); if i<r then qsort1(i,r);
end;
begin
 assign(fi,'trochoi.inp');
 assign(fo,'trochoi.out');
 reset(fi);
 rewrite(fo);
 readln(fi,n);
 for i:=1 to n do
  begin
   d:=0;
   readln(fi,c[i]);
   for j:=1 to length(c[i]) do if c[i][j] in ['0'..'9'] then inc(d);
   a[i]:=d;
   b[i]:=i;
  end;
 qsort(1,n);
 i:=0;
 while i<n-1 do
  begin
   inc(i);
   d:=1;
   while (i+d<=n) and (a[i+d-1]=a[i+d]) do inc(d);
   if d<>1 then qsort1(i,i+d-1);
   i:=i+d-1;
  end;
 for i:=1 to n do writeln(fo,c[i]);
 close(fi);
 close(fo);
end.
