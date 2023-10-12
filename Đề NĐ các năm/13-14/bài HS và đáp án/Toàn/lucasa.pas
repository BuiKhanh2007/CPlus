VAR a:Array[0..11]of Qword;
    i,m,n,k,c,p,d:longint;
    s,j:Qword;
    fi,fo:text;
BEGIN
 Assign(fi,'lucasa.inp');Reset(fi);
 Assign(fo,'lucasa.out');Rewrite(fo);
 Readln(fi,k);
 c:=0;
 m:=1;
 For i:=1 to 5 do
  BEGIN
   n:=c;
   For p:=0 to c do
    BEGIN
     j:=1;
      While j<=9 do
       BEGIN
        s:=j*m+a[p];
        If s=(s*s) mod (m*10) then
         BEGIN
          c:=c+1;
          a[c]:=s;
         END;
        j:=j+1;
       END;
    END;
   m:=m*10;
  END;
 For i:=1 to k do
  BEGIN
   Readln(fi,m,n);
   d:=0;
   j:=1;
   While j<=c do
    BEGIN
     If(m<=a[j])and(n>=a[j])then d:=d+1;
     j:=j+1;
    END;
   Writeln(fo,d);
  END;
 Close(fi);
 Close(fo);
END.
