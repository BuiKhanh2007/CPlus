VAR x,y:Ansistring;
    i,max:Longint;
    fi,fo:text;
Function cong(a,b:Ansistring):Ansistring;
VAR du,x:Byte;
    j:Longint;
BEGIN
 If length(b)>length(a) then cong:=cong(b,a)else
  BEGIN
   While length(b)<length(a) do b:='0'+b;
   du:=0;
   For j:=length(a) downto 1 do
    BEGIN
     x:=ord(a[j])+ord(b[j])-96+du;
     cong:=chr(x mod 10+48)+cong;
     du:=x div 10;
    END;
   If du<>0 then cong:='1'+cong;
 END;
END;
BEGIN
 Assign(fi,'prize.inp');Reset(fi);
 Assign(fo,'prize.out');Rewrite(fo);
 Readln(fi,x);
 Readln(fi,y);
 x:=cong(x,y);
 Writeln(fo,x);
 For i:=1 to length(x) do
  BEGIN
   If ord(x[i])-48>max then max:=ord(x[i])-48;
   If max=9 then Break;
  END;
 Writeln(fo,max);
 Close(fi);
 Close(fo);
END.
