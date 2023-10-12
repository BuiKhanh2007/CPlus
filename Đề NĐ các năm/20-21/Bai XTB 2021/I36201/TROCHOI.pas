program trochoi;
type mang=array[1..100000] of string;
var i,j,N:longint;
    A:mang;
    x:string;
    fi,fo:text;
Function dem(s:string):longint;
var i,d:longint;
begin
    d:=0;
    for i:=1 to length(s) do
     if s[i] in ['0'..'9'] then inc(d);
     dem:=d;
end;
procedure qsort(l,r:longint);
var i,j,x:longint;
    tam:string;
begin
    i:=l;
    j:=r;
    x:=dem(A[(i+j) div 2]);
    repeat
       while dem(A[i])<x do inc(i);
       while dem(A[j])>x do dec(j);
       if i<=j then
        begin
           tam:=A[i];
           A[i]:=A[j];
           A[j]:=tam;
           inc(i);
           dec(j);
        end;
    until i>j;
  if l<j then qsort(l,j);
  if i<r then qsort(i,r);
end;
begin
     assign(fi,'TROCHOI.inp'); reset(fi);
     assign(fo,'TROCHOI.out'); rewrite(fo);
     readln(fi,N);
     j:=1;
     for i:=1 to N do
     begin
         readln(fi,x);
         A[j]:=x;
         inc(j);
     end;
     qsort(1,j-1);
     for i:=1 to j-1 do writeln(fo,A[i]);
   close(fi); close(fo);
end.