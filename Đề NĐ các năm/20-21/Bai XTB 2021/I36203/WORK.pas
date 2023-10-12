program work;
var T,P:array[1..1000000] of byte;
    i,n,s:integer;
    fi,fo:text;
Begin
  assign(fi,'work.inp'); reset(fi);
  assign(fo,'work.out'); rewrite(fo);
  readln(fi,n);
  for i:=1 to n do read(fi,T[i]);
  for i:=1 to n-1 do read(fi,P[i]);
  for i:=1 to n do
        if i mod 2<>0 then s:=s+P[i];
  s:=S+T[n];
  write(fo,s);
  close(fi); close(fo);
End.