var f1,f2:text;
    n,i,j,d,k,h:longint;
    a,b,c:array[1..100000] of longint;

begin
assign(f1,'sbd.inp');reset(f1);
assign(f2,'sbd.out');rewrite(f2);
readln(f1,n);
for i:=1 to n do readln(f1,a[i]);
for i:=1 to n do
for j:=1 to n do begin
   h:=i;
if h<>j then if a[i]=a[j] then begin b[i]:=1;   b[j]:=1;
end;end;



for i:=1 to n do if b[i]<1 then d:=d+1; writeln(f2,d);
for i:=1 to n do if b[i]<1 then writeln(f2,a[i]);

close(f1);close(f2);
end.