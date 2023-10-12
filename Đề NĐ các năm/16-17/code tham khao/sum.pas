var f1,f2:text;
a:array[1..10003]of int64;
n,k,b,i:longint;
kq:int64;
begin
assign(f1,'sum.inp');
reset(f1);
assign(f2,'sum.out');
rewrite(f2);
readln(f1,n,k,b);
for i:=1 to n do
readln(f1,a[i]);

kq:=0;
for i:=b to b+k-1 do
kq:=kq+a[(i-1) mod n +1];
write(f2,kq);



   close(f1);
   close(f2);
end.