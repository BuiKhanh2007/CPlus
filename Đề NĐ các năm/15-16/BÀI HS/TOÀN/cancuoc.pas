VAR a:Array[1..10000]of Qword;
    s,x:Qword;
    i,n:Longint;
    fi,fo:text;
Procedure qs(d,c:Longint);
VAR i,j,g,tg:Longint;
BEGIN
 i:=d;
 j:=c;
 g:=a[(d+c)div 2];
 Repeat
  While(a[i]<g)do i:=i+1;
  While(a[j]>g)do j:=j-1;
  If i<=j then
   BEGIN
    tg:=a[i];
    a[i]:=a[j];
    a[j]:=tg;
    i:=i+1;
    j:=j-1;
   END;
 Until i>j;
 If j>d then qs(d,j);
 If i<c then qs(i,c);
END;
BEGIN
 Assign(fi,'cancuoc.inp');Reset(fi);
 Assign(fo,'cancuoc.out');Rewrite(fo);
 Readln(fi,n);
 For i:=1 to n do
  BEGIN
   Read(fi,a[i]);
   x:=x+a[i];
  END;
 qs(1,n);
 For i:=n downto 1 do
  BEGIN
   s:=s+x;
   x:=x-a[i];
  END;
 Writeln(fo,s);
 Close(fi);
 Close(fo);
END.
