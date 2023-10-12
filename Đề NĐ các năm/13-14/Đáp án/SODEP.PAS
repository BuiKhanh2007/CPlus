var fi,fo:text;
i,d,j,n:longint;
a:array[1..500]of longint;
begin
assign(fi,'sodep.inp');
reset(fi);
assign(fo,'sodep.out');
rewrite(fo);
readln(n);
for j:=1 to n do
begin
readln(fi,a[j]);
for i:=1 to trunc(sqrt(a[j])) do
if (a[j] mod i=0) then d:=d+2;
if sqrt(a[j])=trunc(sqrt(a[j])) then d:=d-1;
if a[j] mod d=0 then
writeln(fo,'Co')else writeln(fo,'Khong');
writeln(fo);
end;
close(fi);
close(fi);
end.