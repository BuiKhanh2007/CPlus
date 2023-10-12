var fi,fo:text;
s:ansistring;
t,i,k:longint;
Begin
 assign(fi,'mahoa.inp');reset(fi);
 assign(fo,'mahoa.out');rewrite(fo);
 Readln(fi,k);
 While not seekEOF(fi) do
  Begin
   Readln(fi,s);
   For i:=1 to length(s) do
    If (s[i]<>' ') then
     begin
      t:=ord(s[i])+k;
      s[i]:=chr(t);
     End;
   Writeln(fo,s);
  End;
 CLose(fi);
 Close(fo);
End.
