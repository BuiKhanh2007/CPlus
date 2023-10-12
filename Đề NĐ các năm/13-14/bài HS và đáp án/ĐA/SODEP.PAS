var fi,fo:text;
    n,a,d,i,j:longint;
begin
  assign(fi,'sodep.inp');reset(fi);
  assign(fo,'sodep.out');rewrite(fo);
  readln(fi,n);
  for i:=1 to n do
    begin
      readln(fi,a);
      d:=0;
      for j:=1 to trunc(sqrt(a)) do
        if a mod j=0 then d:=d+2;
      if trunc(sqrt(a))=sqrt(a) then d:=d-1;
      if a mod d=0 then write(fo,'Co')else write(fo,'Khong');
      writeln(fo);
    end;
  close(fi);
  close(fo);
end.