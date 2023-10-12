type m=array[0..1000001]of longint;
var  a,b,c:m;
f:array[0..1000001]of boolean;
n,i,j,k,max,x,t,s:longint;
fi,fo:text;
procedure qsort(l,r:longint;var a:m);
var i,j,x,y,z:longint;
   begin
   i:=l; j:=r;
   x:=a[(l+r) div 2];
   repeat
   while a[i]<x do inc(i);
   while a[j]>x do dec(j);
   if not(i>j) then
      begin
      y:=a[i];
      a[i]:=a[j];
      a[j]:=y;
      inc(i);
      dec(j);
      end;
   until i>j;
   if l<j then qsort(l,j,a);
   if i<r then qsort(i,r,a);
   end;

begin
assign(fi,'work.inp');
assign(fo,'work.out');
reset(fi);
rewrite(fo);
readln(fi,n);
for i:=1 to n do read(fi,a[i]);
readln(fi);
for i:=1 to n-1 do read(fi,b[i]);
for i:=1 to n-1 do
    begin
    c[i]:=a[i]+a[i+1]-b[i];
    f[i]:=true;
    end;
max:=c[1]; c[0]:=0; c[n]:=0;
for i:=1 to n-1 do if c[i]>max then
      begin
      max:=c[i];
      k:=i;
      end;
t:=0;
t:=t+max;
f[k]:=false; f[k-1]:=false; f[k+1]:=false;
x:=n div 2;
j:=1;
while j<x do
   begin
   max:=0;
   for i:=1 to n do if (f[i]=true) and (c[i]>max) then
                          begin
                          max:=c[i];
                          k:=i;
                          end;
   t:=t+max;
   f[k]:=false; f[k-1]:=false; f[k+1]:=false;
   inc(j);
   end;
s:=0;
for i:=1 to n do s:=s+a[i];
write(fo,s-t);
close(fi);
close(fo);
end.














