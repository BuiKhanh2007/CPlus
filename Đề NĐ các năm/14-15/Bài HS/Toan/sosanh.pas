VAR x,y:Extended;
    fi,fo:text;
BEGIN
 Assign(fi,'sosanh.inp');Reset(fi);
 Assign(fo,'sosanh.out');Rewrite(fo);
 Readln(fi,x,y);
 If x>y then Writeln(fo,'>') else
  If x=y then Writeln(fo,'=') else Writeln(fo,'<');
 Close(fi);
 Close(fo);
END.
