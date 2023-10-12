var f1,f2:text;
    n,i,j,m,q,max,h:longint;
    a,b,c:array[1..10000] of longint;
begin
assign(f1,'work.inp');reset(f1);
assign(f2,'word.out');rewrite(f2);
readln(f1,n);   i:=1;
for i:=1 to n do read(f1,a[i]);readln(f1);
for i:=1 to n-1 do read(f1,b[i]);
for i:=1 to n-1 do begin

 for m:=1 to n do if a[i]-a[i+1]-b[i]>0 then c[i]:=a[i]+a[i+1]-b[i] else c[i]:=0;
 for m:=1 to n do
 if c[m]>max then begin max:=c[m];q:=m;  end;
  h:=h+max;
  a[q]:=0;
  a[q+1]:=0;
end;
write(f2,h);
close(f1);close(f2);
end.