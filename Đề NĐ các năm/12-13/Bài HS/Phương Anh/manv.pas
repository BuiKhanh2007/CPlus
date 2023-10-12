var fi,fo:text;
a:array[1..1000000] of longint;
i,n:longint;
Procedure qs(d,c:longint);
 var tg,g,i,j:longint;
  Begin
   g:=a[(d+c) div 2];
   i:=d;
   j:=c;
   Repeat
    While (i<=n) and (a[i]<g) do i:=i+1;
    While (j>=0) and (a[j]>g) do j:=j-1;
    If (i<=j) then
     begin
      tg:=a[i];
      a[i]:=a[j];
      a[j]:=tg;
      i:=i+1;
      j:=j-1;
     End;
   until i>j;
   If (i<c) then qs(i,c);
   if (d<j) then qs(d,j);
  End;
Begin
 assign(fi,'manv.inp');reset(fi);
 assign(fo,'manv.out');rewrite(fo);
 Readln(fi,n);
 For i:=1 to n do readln(fi,a[i]);
 qs(1,n);
 a[n+1]:=a[n]+2;
  If (a[1]>1) then writeln(fo,'1')
 else
  For i:=1 to n do
   If (a[i]+1<a[i+1]) then
    Begin
     writeln(fo,a[i]+1);
     break;
    End;
 Close(fi);
 Close(fo);
End.
