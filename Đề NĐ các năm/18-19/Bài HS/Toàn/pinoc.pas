VAR a:Array[1..1000000]of Longint;
    i,j,n,m,max,s:Longint;
    fi,fo:text;
Procedure qs(d,c:Longint);
VAR i,j,tg,g:Longint;
BEGIN
 i:=d;
 j:=c;
 g:=a[(d+c)div 2];
 Repeat
  While a[i]>g do i:=i+1;
  While a[j]<g do j:=j-1;
  If i<=j then
   BEGIN
    tg:=a[i];
    a[i]:=a[j];
    a[j]:=tg;
    i:=i+1;
    j:=j-1;
   END;
 Until i>j;
 If d<j then qs(d,j);
 If i<c then qs(i,c);
END;
BEGIN
 Assign(fi,'pinoc.inp');Reset(fi);
 Assign(fo,'pinoc.out');Rewrite(fo);
 Readln(fi,n,m);
 For i:=1 to n do Read(fi,a[i]);
 qs(1,n);
 For i:=2 to n do
  BEGIN
   s:=s+(a[i-1]-a[i])*(i-1);
   If s>=m then
    BEGIN
     max:=a[i]+(s-m)div (i-1);
     Break;
    END;
  END;
 Writeln(fo,max);
 Close(fi);
 Close(fo);
END.
