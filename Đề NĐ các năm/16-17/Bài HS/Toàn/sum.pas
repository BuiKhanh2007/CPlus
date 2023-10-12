VAR a:Array[1..10000]of Longint;
    s,x:Real;
    n,b,k,i:Longint;
    fi,fo:text;
BEGIN
 Assign(fi,'sum.inp');Reset(fi);
 Assign(fo,'sum.out');Rewrite(fo);
 Readln(fi,n,k,b);
 For i:=1 to n do
  BEGIN
   Readln(fi,a[i]);
   x:=x+a[i];
  END;
 s:=x*(k div n);
 k:=k mod n;
 i:=b mod n;
 While k>0 do
  BEGIN
   s:=s+a[i];
   i:=i+1;
   If i>n then i:=1;
   k:=k-1;
  END;
 Writeln(fo,s:0:0);
 Close(fi);
 Close(fo);
END.
