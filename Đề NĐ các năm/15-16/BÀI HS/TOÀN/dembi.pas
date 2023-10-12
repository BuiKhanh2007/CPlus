VAR a,b,c,f:Array[0..100000]of Longint;
    x,y,z,i,n,q:Longint;
    fi,fo:text;
BEGIN
 Assign(fi,'dembi.inp');Reset(fi);
 Assign(fo,'dembi.out');Rewrite(fo);
 Readln(fi,n,q);
 For i:=1 to n do
  BEGIN
   Readln(fi,f[i]);
   x:=0;
   y:=0;
   z:=0;
   Case f[i] of
    1:x:=1;
    2:y:=1;
    3:z:=1;
   END;
   a[i]:=a[i-1]+x;
   b[i]:=b[i-1]+y;
   c[i]:=c[i-1]+z;
  END;
 For i:=1 to q do
  BEGIN
   Readln(fi,x,y);
   Writeln(fo,a[y]-a[x-1],' ',b[y]-b[x-1],' ',c[y]-c[x-1]);
  END;
 Close(fi);
 Close(fo);
END.
