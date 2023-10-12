VAR t,p,f:Array[0..1000000]of Longint;
    i,n:longint;
    fi,fo:text;
Function min(x,y:Longint):longint;
BEGIN
 If x<=y then Exit(x);
 Exit(y);
END;
BEGIN
 Assign(fi,'WORK.INP');Reset(fi);
 Assign(fo,'WORK.OUT');Rewrite(fo);
 Readln(fi,n);
 For i:=1 to n do Read(fi,t[i]);
 Readln(fi);
 For i:=1 to n-1 do Read(fi,p[i+1]);
 f[1]:=t[1];
 For i:=2 to n do f[i]:=min(f[i-2]+p[i],f[i-1]+t[i]);
 Writeln(fo,f[n]);
 Close(fi);
 Close(fo);
END.