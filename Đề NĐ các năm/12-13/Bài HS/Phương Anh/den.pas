var fi,fo:text;
x:ansistring;
s,t,i,j,tt:longint;
begin
 assign(fi,'den.inp');reset(fi);
 assign(fo,'den.out');rewrite(fo);
 While not seekEOF(fi) do
  Begin
   Readln(fi,s,t);
   tt:=0;
   For i:=s to t do
    Begin
     STR(i,x);
     For j:=1 to length(x) do
       If (x[j]='1') then tt:=tt+2
     else
       If (x[j]='7') then tt:=tt+3
     else
       If (x[j]='4') then tt:=tt+4
     else
       If (x[j]='8') then tt:=tt+7
     else
       If (x[j]='0') or (x[j]='6') or (x[j]='9') then tt:=tt+6
     else tt:=tt+5;
    End;
   Writeln(fo,tt);
  End;
 CLose(fi);
 Close(fo);
End.