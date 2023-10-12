var a,b,c:array[1..1000000] of longint;
    i,n,d:longint;
    fi,fo:text;
procedure qsort(l,r:longint);
var i,j,x,y:longint;
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
     inc(i); dec(j);
    end;
  end;
 until i>j;
 if l<j then qsort(l,j); if i<r then qsort(i,r);
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
   b[i]:=i;
  end;
 qsort(1,n);
 d:=0;
 if a[1]<>a[2] then
  begin
   c[b[1]]:=a[1];
   inc(d);
  end;
 for i:=2 to n-1 do if (a[i]<>a[i-1]) and (a[i]<>a[i+1]) then
  begin
   inc(d);
   c[b[i]]:=a[i];
  end;
 if a[n-1]<>a[n] then
  begin
   c[b[n]]:=a[n];
   inc(d);
  end;
 writeln(fo,d);
 for i:=1 to n do if c[i]<>0 then writeln(fo,c[i]);
 close(fi);
 close(fo);
end.
