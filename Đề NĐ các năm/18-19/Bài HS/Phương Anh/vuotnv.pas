var fi,fo:text;
a,h:array[1..1000000] of longint;
i,n,k,max,s,m,j:longint;
Procedure qs(d,c:longint);
 var i,j,g,tg,tg1:longint;
  Begin
   g:=a[(d+c) div 2];
   i:=d;
   j:=c;
   Repeat
    While (i<=n) and (a[i]>g) do i:=i+1;
    While (j>=0) and (a[j]<g) do j:=j-1;
    If (i<=j) then
     Begin
      tg:=a[i];
      tg1:=h[i];
      a[i]:=a[j];
      h[i]:=h[j];
      a[j]:=tg;
      h[j]:=tg1;
      i:=i+1;
      j:=j-1;
     End;
   until i>j;
   If (i<c) then qs(i,c);
   If (d<j) then qs(d,j);
  End;
Begin
 assign(fi,'vuotnv.inp');reset(fi);
 assign(fo,'vuotnv.out');rewrite(fo);
 Readln(fi,n,k);
 For i:=1 to n do read(fi,a[i]);
 Readln(fi);
 For i:=1 to n do read(fi,h[i]);
 Readln(fi);
 qs(1,n);
 i:=1;
 max:=0;
 For i:=1 to n do
  Begin
   m:=a[i]-k;
   s:=h[i];
   For j:=i+1 to n do
   If a[j]=m then
    Begin
     s:=s+h[j];
     m:=m-k;
    // Writeln(fo,s,' ',h[j],' ',m,' ',a[j]);
    End;
   If max<s then max:=s;
  End;
 Writeln(fo,max);
 Close(fi);
 Close(fo);
End.