VAR a:Array[0..9,1..100]of Longint;
    i,j,u,v,d,n,k,c:longint;
    fi,fo:text;
Function nt(x:Longint):Boolean;
VAR p:Longint;
BEGIN
 If x=1 then Exit(false);
 For p:=2 to trunc(sqrt(x)) do
  If x mod p=0 then Exit(false);
 Exit(true);
END;
BEGIN
 Assign(fi,'snto.inp');Reset(fi);
 Assign(fo,'snto.out');Rewrite(fo);
 Readln(fi,u,v);
 n:=1;
 For i:=1 to 9 do
  BEGIN
   If(i=1)and(u<=2)then
    BEGIN
     d:=d+1;
     a[1,1]:=2;
     c:=1;
    END;
   For j:=1 to n do
    BEGIN
     k:=1;
     While k<=9 do
      BEGIN
       If nt(a[i-1,j]*10+k)=true then
        BEGIN
         c:=c+1;
         a[i,c]:=a[i-1,j]*10+k;
         If(a[i,c]>=u)and(a[i,c]<=v)then d:=d+1;
        END;
       k:=k+2;
      END;
    END;
   n:=c;
   c:=0;
  END;
 Writeln(fo,d);
 Close(fi);
 Close(fo);
END.
