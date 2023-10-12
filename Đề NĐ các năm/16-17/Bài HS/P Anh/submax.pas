var fi,fo:text;
b,a:array[-100000..100000] of longint;
i,n,j,max,s:longint;
Begin
assign(fi,'submax.inp');reset(fi);
assign(fo,'submax.out');rewrite(fo);
Readln(fi,n);
For i:=1 to n do Readln(fi,a[i]);
max:=-maxlongint;
b[1]:=a[1];
For i:=2 to n do b[i]:=b[i-1]+a[i];
For i:=1 to n do
For j:=i to n do
If (b[j]-b[i-1])>max then max:=b[j]-b[i-1];
Writeln(fo,max);
CLose(fi);
Close(fo);
End.
