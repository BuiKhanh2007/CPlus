VAR s:Array[1..10000]of Ansistring;
    f,b:Array[1..10001]of longint;
    i,j,n:Longint;
    fi,fo:text;
Procedure qsa(d,c:Longint);
VAR i,j,g,tg:Longint;
BEGIN
 i:=d;
 j:=c;
 g:=f[(d+c)div 2];
 Repeat
  While f[i]<g do i:=i+1;
  While f[j]>g do j:=j-1;
  If i<=j then
   BEGIN
    tg:=f[i];
    f[i]:=f[j];
    f[j]:=tg;
    tg:=b[i];
    b[i]:=b[j];
    b[j]:=tg;
    i:=i+1;
    j:=j-1;
   END;
 Until i>j;
 If j>d then qsa(d,j);
 If i<c then qsa(i,c);
END;
Procedure qsb(d,c:Longint);
VAR i,j,g,tg:Longint;
BEGIN
 i:=d;
 j:=c;
 g:=b[(d+c)div 2];
 Repeat
  While b[i]<g do i:=i+1;
  While b[j]>g do j:=j-1;
  If i<=j then
   BEGIN
    tg:=b[i];
    b[i]:=b[j];
    b[j]:=tg;
    i:=i+1;
    j:=j-1;
   END;
 Until i>j;
 If j>d then qsb(d,j);
 If i<c then qsb(i,c);
END;
BEGIN
 Assign(fi,'TROCHOI.INP');Reset(fi);
 Assign(fo,'TROCHOI.OUT');Rewrite(fo);
 Readln(fi,n);
 For i:=1to n do
  BEGIN
   Readln(fi,s[i]);
   For j:=1 to length(s[i])do
    If(ord(s[i][j])>=48)and(ord(s[i][j])<=57)then inc(f[i]);
   b[i]:=i;
  END;
 qsa(1,n);
 f[n+1]:=maxlongint;
 i:=1;
 While i<=n do
  BEGIN
   j:=i;
   While f[j]=f[j+1]do j:=j+1;
   If i=j then Writeln(fo,s[b[i]]) else
    BEGIN
     qsb(i,j);
     While i<=j do
      BEGIN
       Writeln(fo,s[b[i]]);
       i:=i+1;
      END;
    END;
   i:=j+1;
  END;
 Close(fi);
 Close(fo);
END.
