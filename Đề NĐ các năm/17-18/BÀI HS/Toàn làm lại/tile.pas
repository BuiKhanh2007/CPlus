VAR s:Array[0..1000]of Ansistring;
    i,n,c:Longint;
    fi,fo:text;
Procedure tt(x:longint);
VAR i,du,f:Longint;
BEGIN
 du:=0;
 For i:=length(s[x-1]) downto 1 do
  BEGIN
   f:=(ord(s[x-1][i])-48)*2;
   s[x]:=chr((f+du) mod 10+48)+s[x];
   du:=(f+du)div 10;
  END;
 If du>0 then s[x]:=chr(du+48)+s[x];
 If x mod 2=1 then
  BEGIN
   i:=length(s[x]);
   Repeat
    f:=(ord(s[x][length(s[x])])-39);
    s[x][length(s[x])]:=chr(f mod 10+48);
    du:=1-f div 10;
   Until du=0
  END
 Else s[x][length(s[x])]:=chr(ord(s[x][length(s[x])])+1);
END;
BEGIN
 ASsign(fi,'tile.inp');Reset(fi);
 Assign(fo,'tile.out');Rewrite(fo);
 s[0]:='0';
 s[1]:='1';
 c:=1;
 While SeekEOF(fi)=false do
  BEGIN
   Readln(fi,n);
   While c<n do
    BEGIN
     c:=c+1;
     tt(c);
    END;
   Writeln(fo,s[n]);
  END;
 Close(fi);
 Close(fo);
END.