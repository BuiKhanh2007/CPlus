var
fa,fd:text;
n,i,d,d1:longint;
a,vt,k:array[0..1000007] of longint;
procedure sort(l,r: longint);
var
i,j,x,y: longint;
begin
i:=l;
j:=r;
x:=a[(l+r) div 2];
repeat
while a[i]<x do inc(i);
while x<a[j] do dec(j);
if not(i>j) then
        begin
        y:=a[i];
        a[i]:=a[j];
        a[j]:=y;
        y:=vt[i];
        vt[i]:=vt[j];
        vt[j]:=y;
        inc(i);
        j:=j-1;
        end;
until i>j;
if l<j then sort(l,j);
if i<r then sort(i,r);
end;
begin
assign(fa,'sdb.inp');  reset (fa);
assign(fd,'sdb.out'); rewrite(fd);
readln(fa,n);
for i:=1 to n do
        begin
        readln(fa,a[i]);
        vt[i]:=i;
        end;
sort(1,n);
for i:=1 to n do
        begin
        if (a[i]<>a[i+1]) and (d=0) then
                begin
                inc(d1);
                k[vt[i]]:=a[i];
                end
        else if a[i]=a[i+1] then
                begin
                d:=d+1;
                a[i]:=0;
                end
        else if d>0 then
                begin
                a[i]:=0;
                d:=0;
                end
        else d:=0;
        end;
{d:=0;
//k[0]:=0;
for i:=1 to n do
        if a[i]<>0 then
                begin
                inc(d);
                k[vt[i]]:=a[i];
                end;}
writeln(fd,d1);
for i:=1 to n do
        if k[i]<>0 then writeln(fd,k[i]);
close(fa);
close(fd);
end.
