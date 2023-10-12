VAR s:Array[0..32]of Ansistring;
    i,j,n,k,t,d:Longint;
    fi,fo:text;
BEGIN
 Assign(fi,'fib2.inp');Reset(fi);
 Assign(fo,'fib2.out');Rewrite(fo);
 s[0]:='a';
 s[1]:='b';
 For i:=2 to 32 do s[i]:=s[i-2]+s[i-1];
 Readln(fi,t);
 For i:=1 to t do
  BEGIN
   Readln(fi,n,k);
   d:=0;
   For j:=1 to k do
    If s[n][j]='a' then d:=d+1;
   Writeln(fo,d);
  END;
 Close(fi);
 Close(fo);
END.