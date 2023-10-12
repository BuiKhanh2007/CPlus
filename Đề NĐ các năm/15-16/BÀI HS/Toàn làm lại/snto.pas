VAR a:Array[1..100]of Int64;
    i,j,n,k,u,v,d,c:Longint;
    fi,fo:text;
Function nt(x:longint):Boolean;
VAR i:longint;
BEGIN
 For i:=2 to trunc(sqrt(x)) do
  If x mod i=0 then Exit(false);
 Exit(true);
END;
BEGIN
 Assign(fi,'snto.inp');Reset(fi);
 Assign(fo,'snto.out');Rewrite(fo);
 a[1]:=2;
 a[2]:=3;
 a[3]:=5;
 a[4]:=7;
 d:=1;
 c:=4;
 For i:=2 to 18 do
  BEGIN
   u:=c;
   For j:=d to c do
    BEGIN
     k:=1;
     While k<=9 do
      BEGIN
       If nt(a[j]*10+k)=true then
        BEGIN
         u:=u+1;
         a[u]:=a[j]*10+k;
        END;
       k:=k+2;
      END;
    END;
   If u>c then d:=c+1 else Break;
   c:=u;
  END;
 Readln(fi,u,v);
   If u>v then
    BEGIN
     d:=u;
     u:=v;
     v:=d;
    END;
   d:=0;
   For j:=1 to c do
    If(u<=a[j])and(a[j]<=v)then d:=d+1;
   Writeln(fo,d);
 Close(fi);
 Close(fo);
END.
