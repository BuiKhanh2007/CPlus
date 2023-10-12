var fa,fd:text;
    i,n,d:longint;
    a,b,c,e:array[0..1000010] of longint;
    procedure sort(l,r: longint);
      var
         i,j,x,y: longint;
      begin
         i:=l;
         j:=r;
         x:=a[(l+r) div 2];
         repeat
           while a[i]<x do
            inc(i);
           while x<a[j] do
            dec(j);
           if not(i>j) then
             begin
                y:=a[i];
                a[i]:=a[j];
                a[j]:=y;
                y:=b[i];b[i]:=b[j];b[j]:=y;
                inc(i);
                j:=j-1;
             end;
         until i>j;
         if l<j then
           sort(l,j);
         if i<r then
           sort(i,r);
      end;
      procedure sort2(l,r: longint);
      var
         i,j,x,y: longint;
      begin
         i:=l;
         j:=r;
         x:=e[(l+r) div 2];
         repeat
           while e[i]<x do
            inc(i);
           while x<e[j] do
            dec(j);
           if not(i>j) then
             begin
                y:=e[i];
                e[i]:=e[j];
                e[j]:=y;
                y:=c[i];c[i]:=c[j];c[j]:=y;
                inc(i);
                j:=j-1;
             end;
         until i>j;
         if l<j then
           sort2(l,j);
         if i<r then
           sort2(i,r);
      end;
begin
assign(fa,'sdb.inp');reset(fa);
assign(fd,'sdb.out');rewrite(fd);
readln(fa,n);
for i:=1 to n do begin
readln(fa,a[i]);b[i]:=i;end;
sort(1,n);
if a[1]<>a[2] then begin inc(d);c[d]:=a[1];e[d]:=b[1];end;
for i:=2 to n-1 do
if (a[i]<>a[i-1])and(a[i]<>a[i+1]) then begin inc(d);c[d]:=a[i];e[d]:=b[i];end;
if a[n]<>a[n-1] then begin inc(d);c[d]:=a[n];e[d]:=b[n];end;
sort2(1,d);
writeln(fd,d);
for i:=1 to d do writeln(fd,c[i]);
close(fa);
close(fd);
end.
