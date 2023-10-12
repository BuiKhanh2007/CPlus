VAR s,x:Ansistring;
    i,t,d,c,max:Longint;
    fi,fo:text;
BEGIN
 Assign(fi,'string.inp');Reset(fi);
 Assign(fo,'string.out');Rewrite(fo);
 Readln(fi,s);
 While s[1]=' 'do Delete(s,1,1);
 While s[length(s)]=' 'do Delete(s,length(s),1);
 i:=1;
 d:=1;
 s:=s+' ';
 While i<length(s) do
  BEGIN
   While s[i]<>' 'do i:=i+1;
   If s[i]=' 'then c:=i-1;
   If c-d+1>length(x) then x:=Copy(s,d,c-d+1);
   d:=c+2;
   While(i<length(s))and(s[i]=' ')and(s[i+1]=' ')do Delete(s,i,1);
   i:=i+1;
  END;
 Writeln(fo,x);
 Close(fi);
 Close(fo);
END.
