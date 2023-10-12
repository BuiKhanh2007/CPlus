var fa,fd:text;
    i,n:longint;
    f,t,p:array[0..1000010] of longint;
begin
assign(fa,'work.inp');reset(fa);
assign(fd,'work.out');rewrite(fd);
readln(fa,n);
for i:=1 to n do read(fa,t[i]);
readln(fa);
for i:=1 to n-1 do read(fa,p[i]);
f[1]:=t[1];f[0]:=0;
for i:=2 to n do
if f[i-1]+t[i]<=f[i-2]+p[i-1] then f[i]:=f[i-1]+t[i]
else f[i]:=f[i-2]+p[i-1];

write(fd,f[n]);
close(fa);
close(fd);
end.
