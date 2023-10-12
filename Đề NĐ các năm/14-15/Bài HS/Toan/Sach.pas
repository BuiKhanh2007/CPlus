VAR a:Array[1..100000]of Longint;
    b:Array[0..100000]of Qword;
    i,j,n,t,d,max:Longint;
    fi,fo:text;
BEGIN
 Assign(fi,'sach.inp');Reset(fi);
 Assign(fo,'sach.out');Rewrite(fo);
 Readln(fi,n,t);
 For i:=1 to n do
  BEGIN
   Read(fi,a[i]);
   If(b[i-1]<=t)and(b[i-1]+a[i]>t)then
    BEGIN
     max:=i-1;
     d:=i-1;
    END;
   b[i]:=b[i-1]+a[i];
  END;
 For i:=d to n do
  BEGIN
   For j:=i downto 1 do
    If b[i]-b[j-1]>t then Break;
   If i-j>max then max:=i-j;
  END;
 Writeln(fo,max);
 Close(fi);
 Close(fo);
END.