var fi,fo:text;
    n,i,d:longint;
begin
  assign(fi,'sodep.inp');reset(fi);
  assign(fo,'sodep.out');rewrite(fo);
  readln(fi,n);
  for i:=1 to trunc(sqrt(n)) do
  if n mod i=0 then d:=d+2;
  if trunc(sqrt(n))=sqrt(n) then d:=d-1;
  if n mod d=0 then write(fo,'CO')else write(fo,'KHONG');
  close(fi);
  close(fo);
end.