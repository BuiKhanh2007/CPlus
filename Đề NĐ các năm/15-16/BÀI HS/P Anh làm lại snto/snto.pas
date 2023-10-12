var fi,fo:text;
a:array[1..10000] of longint;
u,c,v,d,k,i,j:longint;
Function nto(n:longint):boolean;
  var i:longint;
     Begin
       If n<2 then exit(false);
       For i:=2 to trunc(sqrt(n)) do
       if n mod i=0 then exit(false);
       exit(true);
     End;
Begin
assign(fi,'snto.inp');reset(fi);
assign(fo,'snto.out');rewrite(fo);
a[1]:=2;
a[2]:=3;
a[3]:=5;
a[4]:=7;
d:=1;
c:=4;
For i:=2 to 18 do
 Begin
   u:=c;
   For j:=d to c do
      Begin
        k:=1;
        While (k<=9) do
          Begin
           If nto(a[j]*10+k) then
             Begin
                u:=u+1;
                a[u]:=a[j]*10+k;
             End;
           k:=k+2;
          End;
      End;
   If u>c then d:=c+1 else break;
   c:=u;
 End;
Readln(fi,u,v);
If u>v then
Begin
d:=u;
u:=v;
v:=d;
End;
d:=0;
For i:=1 to c do
If (u<=a[i]) and (v>=a[i]) then d:=d+1;
Writeln(fo,d);
Close(fi);
Close(fo);
End.

