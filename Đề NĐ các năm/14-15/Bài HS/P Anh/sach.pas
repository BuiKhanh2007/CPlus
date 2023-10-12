var fi,fo:text;
a:array[1..100000000] of qword;
s,t:qword;
n,i,luui:longint;
begin
assign(fi,'sach.inp');reset(fi);
assign(fo,'sach.out');rewrite(fo);
Readln(fi,n,t);
For i:=1 to n do read(fi,a[i]);
s:=0;
For i:=1 to n do
If (s<=t) then
Begin
s:=s+a[i];
luui:=i;
End;
Writeln(fo,luui);
Close(fi);
Close(fo);
End.