uses crt;
var fi,fo:text;
a:array[1..5000] of longint;
x:array[1..5000] of ansistring;
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
Function ss(a,b:ansistring):longint;
var d:longint;
i,j:longint;
Begin
   d:=0;
        a:=a+'';
        b:=b+'';
        i:=1;
        Repeat
        j:=pos(a[i],b);
        If j<1 then d:=d+1;
        delete(b,j,1);
        i:=i+1;
        until (length(b)=0) or (i>n);
        d:=abs(length(a)-length(b));

exit(d);
End;
Begin
assign(fi,'city.inp');reset(fi);
assign(fo,'city.out');rewrite(fo);
Readln(fi,n);
For i:=1 to n do readln(fi,a[i]);
For i:=1 to n do x[i]:=du(a[i]);
For i:=1 to n-1 do
For j:=2 to n do
If (ss(x[i],x[j])<=1) or (i=j)  then
Begin
//Writeln(fo,x[i],' ',x[j]);
d:=d+1;
End;
Writeln(fo,d);
CLose(fi);
Close(fo);
End.
