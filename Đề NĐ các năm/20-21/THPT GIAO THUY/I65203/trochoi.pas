var f1,f2:text;
    n,i,j,d:longint;
    a:array[1..1000] of string ;
    b,c:array[1..1000] of longint;
    s,s1,s2:string;
begin
assign(f1,'trochoi.inp');reset(f1);
assign(f2,'trochoi.out');rewrite(f2);
readln(f1,n);   s1:='0123456789';
for i:=1 to n do readln(f1,a[i]);
for i:=1 to n do begin
s2:=a[i];d:=0;
for j:=1 to length(s2) do
if pos(s2[j],s1)<>0 then d:=d+1;
b[i]:=d;
 end;
for i:=1 to n do c[i]:=b[i];
for i:=1 to n  do
for j:=1 to n-1 do

if  b[j]>b[j+1]     then begin
d:=b[j+1];
b[j+1]:=b[j];
b[j]:=d;
end;
for i:=1 to n do begin
d:=b[i];
for j:=1 to n do
if c[j]=d then  begin b[i]:=j;c[j]:=0;  break;  end;
end;

for i:=1 to n do begin d:=b[i]; writeln(f2,a[d]);end;
close(f1);close(f2);
end.