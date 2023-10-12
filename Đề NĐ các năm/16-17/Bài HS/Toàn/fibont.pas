VAR a:Array[1..1000000]of Longint;
    i,n:Longint;
    fi,fo:text;
Function nt(x:Longint):Boolean;
VAR j:Longint;
BEGIN
 nt:=true;
 For j:=2 to trunc(sqrt(x)) do
  If x mod j=0 then
   BEGIN
    nt:=false;
    Break;
   END;
END;
BEGIN
 Assign(fi,'fibont.inp');Reset(fi);
 Assign(fo,'fibont.out');Rewrite(fo);
 Readln(fi,n);
 a[1]:=1;
 a[2]:=1;
 i:=3;
 Repeat
  a[i]:=a[i-1]+a[i-2];
  If nt(a[i])=true then Writeln(fo,a[i]);
  i:=i+1;
 Until a[i-1]+a[i-2]>n;
 Close(fi);
 Close(fo);
END.
