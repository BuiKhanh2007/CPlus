var
fa,fd:text;
n,i,d,d1,j,k:longint;
s1:string;
s:array[0..100000] of ansistring;
a,vt:array[0..100007] of longint;
procedure sort(l,r: longint);
var
i,j,x,y: longint;
begin
i:=l;
j:=r;
x:=a[(l+r) div 2];
repeat
while (a[i]<x) do inc(i);
while (x<a[j]) do dec(j);
if (not(i>j)) then
        begin
        y:=a[i];
        a[i]:=a[j];
        a[j]:=y;
        y:=vt[i];
        vt[i]:=vt[j];
        vt[j]:=y;
        inc(i);
        j:=j-1;
        end;
until i>j;
if l<j then sort(l,j);
if i<r then sort(i,r);
end;
procedure sort2(l,r: longint);
var
i,j,x,y: longint;
begin
i:=l;
j:=r;
x:=vt[(l+r) div 2];
repeat
while (vt[i]<x) do inc(i);
while (x<vt[j]) do dec(j);
if (not(i>j)) then
        begin
        y:=vt[i];
        vt[i]:=vt[j];
        vt[j]:=y;
        y:=a[i];
        a[i]:=a[j];
        a[j]:=y;
        inc(i);
        j:=j-1;
        end;
until i>j;
if l<j then sort2(l,j);
if i<r then sort2(i,r);
end;
begin
assign(fa,'trochoi.inp');  reset (fa);
assign(fd,'trochoi.out'); rewrite(fd);
readln(fa,n);
for i:=1 to n do
        begin
        s1:='';
        readln(fa,s[i]);
        for j:=1 to length(s[i]) do
                if s[i][j] in ['0'..'9'] then s1:=s1+s[i][j];
        a[i]:=length(s1);
        vt[i]:=i;
        end;
sort(1,n);
i:=1;
while i<=n do
        begin
        j:=i;
        while a[i]=a[i+1] do inc(i);
        sort2(j,i);
        for k:=j to i do writeln(fd,s[vt[k]]);
        if i=j then i:=j+1
        else i:=i+1;
        end;
close(fa);
close(fd);
end.
