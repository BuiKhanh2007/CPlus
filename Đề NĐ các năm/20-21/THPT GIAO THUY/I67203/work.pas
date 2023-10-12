var
fa,fd:text;
n,i,d,d1,j,k:longint;
t,p:array[0..1000007] of longint;
f:array[0..3,0..1000007] of longint;
function min(a,b:longint):longint;
begin
if a<b then exit(a)
else exit(b);
end;
begin
assign(fa,'work.inp');  reset (fa);
assign(fd,'work.out'); rewrite(fd);
readln(fa,n);
for i:=1 to n do read(fa,t[i]);
readln(fa);
for i:=2 to n do read(fa,p[i]);
f[0,1]:=t[1];
f[1,1]:=9999999;
//for i:=1 to n do writeln(fd,t[i],' ',p[i]);
for i:=2 to n do
        begin
        f[1,i]:=f[0,i-1]-t[i-1]+p[i];
        f[0,i]:=min(f[0,i-1],f[1,i-1])+t[i];
        end;
write(fd,min(f[0,n],f[1,n]));
close(fa);
close(fd);
end.
