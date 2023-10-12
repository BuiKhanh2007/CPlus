var fi,fo:text;
s,x,y:ansistring;
j,max,i:longint;
begin
 assign(fi,'string.inp');reset(fi);
 assign(fo,'string.out');rewrite(fo);
 Readln(fi,s);
 max:=0;
 While (s[1]=' ') do delete(s,1,1);
 While (s[length(s)]=' ') do delete(s,length(s),1);
 i:=2;
 Repeat
  If (s[i]=' ')  and (s[i+1]=' ') then delete(s,i,1)
   else
    i:=i+1;
 until i>length(s);
 s:=s+' ';
 While length(s)<>0 do
  Begin
   j:=pos(' ',s);
   x:=copy(s,1,j-1);
   delete(s,1,j);
   If max<length(x) then
    Begin
     max:=length(x);
     y:=x;
    End;
  End;
 Writeln(fo,y);
 Close(fi);
 Close(fo);
End.
