VAR s:Ansistring;
    i,k:Longint;
    fi,fo:text;
BEGIN
 Assign(fi,'mahoa.inp');Reset(fi);
 Assign(fo,'mahoa.out');Rewrite(fo);
 Readln(fi,k);
 While SeekEOF(fi)=false do
  BEGIN
   Readln(fi,s);
   For i:=1 to length(s) do
    If s[i]<>' ' then s[i]:=chr(ord(s[i])+k);
   Writeln(fo,s);
  END;
 Close(fi);
 Close(fo);
END.
