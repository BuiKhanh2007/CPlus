uses crt;
var fi,fo:text;
a:array[1..50000] of longint;
x:array[1..50000] of ansistring;
n,i,d,j:longint;
Function du(n:longint):ansistring;
var d:longint;
k:ansistring;
Begin
du:='';;
While (n>0) do
        Begin
                d:=n mod 2;
                str(d,k);
                du:=k+du;
                n:=n div 2;
        End;
exit(du);
End;
Function ss(a,b:ansistring):boolean;
var d:longint;
i,j:longint;
Begin
   d:=0;
   While length(a)<length(b) do a:='0'+a;
    While length(a)>length(b) do b:='0'+b;
   For i:=1 to length(a) do
   If b[i]<>a[i] then
   Begin
   d:=d+1;
   If d>1 then exit(false);
   End;
   exit(true);
End;
Begin
assign(fi,'city.inp');reset(fi);
assign(fo,'city.out');rewrite(fo);
Readln(fi,n);
For i:=1 to n do readln(fi,a[i]);
For i:=1 to n do x[i]:=du(a[i]);
For i:=1 to n-1 do
For j:=i+1 to n do
If i=j then d:=d+1
else
If (ss(x[i],x[j]))  then d:=d+1;
Writeln(fo,d);
CLose(fi);
Close(fo);
End.
