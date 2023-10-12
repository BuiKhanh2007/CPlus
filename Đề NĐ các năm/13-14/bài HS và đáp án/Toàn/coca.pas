VAR a,b,c,s,d:Qword;
    fi,fo:text;
BEGIN
 Assign(fi,'coca.inp');Reset(fi);
 Assign(fo,'coca.out');Rewrite(fo);
 Readln(fi,a,b,c);
 s:=a+b;
 While s div c>0 do
  BEGIN
   d:=d+s div c;
   s:=s div c+s mod c;
  END;
 Writeln(fo,d);
 Close(fi);
 Close(fo);
END.
