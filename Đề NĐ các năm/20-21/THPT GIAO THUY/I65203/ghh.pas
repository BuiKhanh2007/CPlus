var f1,f2:text;
    n,i,j,d,c,h:longint;
    a,b:array[1..1000000] of longint;
begin
assign(f1,'GHH.INP');reset(f1);
assign(f2,'GHH.OUT');rewrite(f2);
readln(f1,n);
for i:=1 to n do readln(f1,a[i]);
for i:=1 to n do
begin

for j:=2 to a[i] div 2 do
    if  a[i] mod j = 0 then h:=h+a[i]div j;
    if 2*a[i]<=h+1+a[i] then begin d:=d+1; b[d]:=a[i] end;
    h:=0;
    end;
writeln(f2,d);
for i:=1 to d do writeln(f2,b[i]);

close(f1);close(f2);
end.