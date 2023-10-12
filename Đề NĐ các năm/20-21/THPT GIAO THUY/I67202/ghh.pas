var fa,fd:text;
    i,d,x,n:longint;
    a:array[0..100000] of longint;
    function kt(x:longint):boolean;
    var s,i:longint;
    begin
    s:=0;
    for i:=1 to trunc(sqrt(x)) do
    if x mod i=0 then s:=s+i+x div i;
    if trunc(sqrt(x))=sqrt(x) then s:=s-trunc(sqrt(x));
    if 2*x<=s then exit(true)
    else exit(false);
    end;
begin
assign(fa,'ghh.inp');reset(fa);
assign(fd,'ghh.out');rewrite(fd);
readln(fa,n);
for i:=1 to n do begin
readln(fa,x);
if kt(x) then begin
inc(d);a[d]:=x;end;
end;
writeln(fd,d);
for i:=1 to d do writeln(fd,a[i]);
close(fa);
close(fd);
end.