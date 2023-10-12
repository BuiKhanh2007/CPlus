var
fa,fd:text;
n,i,a,d:longint;
kq:array[1..100000] of longint;
function kt(a:longint):boolean;
var
i,t:longint;
begin
t:=0;
for i:=2 to trunc(sqrt(a)) do
        if a mod i=0 then t:=t+i+a div i;
if trunc(sqrt(a))=sqrt(a) then t:=t-trunc(sqrt(a));
//writeln(fd,t);
if t>=a-1 then exit(true)
else exit(false);
end;
begin
assign(fa,'ghh.inp');  reset (fa);
assign(fd,'ghh.out'); rewrite(fd);
readln(fa,n);
for i:=1 to n do
        begin
        readln(fa,a);
        if kt(a) then
                begin
                inc(d);
                kq[d]:=a;
                end;
        end;
writeln(fd,d);
for i:=1 to d do writeln(fd,kq[i]);
close(fa);
close(fd);
end.
