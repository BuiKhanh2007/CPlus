const fi='VUOTNV.INP';
      fo='VUOTNV.OUT';
var f1,f2:text;
i,j,n,t,cmax,k,m:longint;
a,h,f:array[1..20000]of longint;
procedure quicksort(l,r:longint);
var
x,i,j,tg:longint;
begin
        i:=l;
        j:=r;
        x:=h[(l+r) div 2];
        repeat
                while h[i]<x do inc(i);
                while h[j]>x do dec(j);
                if i<=j then
                        begin
                                tg:=h[i];
                                h[i]:=h[j];
                                h[j]:=tg;
                                tg:=a[i];
                                a[i]:=a[j];
                                a[j]:=tg;
                                inc(i);
                                dec(j);
                        end;
        until i>j;
        if i<r then quicksort(i,r);
        if j>l then quicksort(l,j);
end;
begin
assign(f1,fi);
assign(f2,fo);
reset(f1);
rewrite(f2);
readln(f1,n,k);
for i:=1 to n do
read(f1,h[i]);
for i:=1 to n do
read(f1,a[i]);
f[1]:=a[1];
quicksort(1,n);
cmax :=a[1];
for i:=2 to n do
        begin
                m:=0;
                for j:=1 to i do
                        if(h[i]-h[j]=k)and(f[j]>m) then m:=f[j];
                f[i]:=m+a[i];
                if (f[i]>cmax) then cmax:=f[i];
         end;

writeln(f2,cmax);
close(f1);
close(f2);
end.
