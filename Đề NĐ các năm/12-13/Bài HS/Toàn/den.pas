VAR a:Array[0..9]of longint;
    i,j,d,c:Longint;
    fi,fo:text;
BEGIN
 Assign(fi,'den.inp');Reset(fi);
 Assign(fo,'den.out');Rewrite(fo);
 While SeekEOF(fi)=false do
  BEGIN
   Readln(fi,d,c);
   Fillchar(a,sizeof(a),0);
   For i:=d to c do
    BEGIN
     j:=i;
     While j>0 do
      BEGIN
       inc(a[j mod 10]);
       j:=j div 10;
      END;
    END;
   Writeln(fo,a[0]*6+a[1]*2+a[2]*5+a[3]*5+a[4]*4+a[5]*5+a[6]*6+a[7]*3+a[8]*7+a[9]*6);
  END;
 Close(fi);
 Close(fo);
END.

