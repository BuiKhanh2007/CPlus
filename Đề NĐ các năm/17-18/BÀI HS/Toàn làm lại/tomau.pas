VAR a:Array[1..3]of Longint;
    s:Ansistring;
    i,j,n:longint;
    fi,fo:text;
Function min(x,y:Longint):Longint;
BEGIN
 If x<=y then Exit(x);
 Exit(y);
END;
BEGIN
 ASsign(fi,'tomau.inp');Reset(fi);
 Assign(fo,'tomau.out');Rewrite(fo);
 Readln(fi,n);
 For j:=1 to n do
  BEGIN
   Readln(fi,s);
   a[1]:=0;
   a[2]:=0;
   a[3]:=0;
   For i:=1 to length(s) do
    Case s[i] of
     'D':inc(a[1]);
     'X':inc(a[2]);
     'V':inc(a[3]);
    END;
   Writeln(fo,min(min(2*a[1]+a[2],2*a[2]+a[3]),2*a[3]+a[1]));
  END;
 Close(fi);
 Close(fo);
END.
