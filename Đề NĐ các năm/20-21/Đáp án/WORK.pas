var fi,fo:text;
n,i:longint;
t,r,f:array[1..1000000] of longint;
f1,f2,tmp:longint;
function  min(a,b:longint):longint;
var x:longint;
begin
   x:=a;
   if b<x then x:=b;
   exit(x);
end;
begin
   assign(fi,'WORK.INP');reset(fi);
   assign(fo,'WORK.OUT');rewrite(fo);
   read(fi,n);
   for i:=1 to n do read(fi,t[i]);readln(fi);
   for i:=1 to n-1 do read(fi,r[i]);
   f1:=t[1];
   f2:=min(t[1]+t[2],r[1]);
for i:=3 to n do
begin
   tmp:=f2;
   f2:=min(f2+t[i],f1+r[i-1]);
   f1:=tmp;
end;
writeln(fo,f2);
close(fi);close(fo);
end.
