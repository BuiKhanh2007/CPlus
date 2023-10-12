var fi,fo:text;
    s,a,b,c:ansistring;
    t,nho,i,max:longint;
begin
  assign(fi,'prize.inp');reset(fi);
  assign(fo,'prize.out');rewrite(fo);
  readln(fi,a);
  readln(fi,b);
  if length(a)<length(b) then
    begin
      s:=a;
      a:=b;
      b:=s;
    end;
  max:=0;
  while length(a)>length(b) do b:='0'+b;
  for i:=length(a) downto 1 do
    begin
      t:=nho+ord(a[i])+ord(b[i])-96;
      nho:=t div 10;
      t:=t mod 10;
      if t>max then max:=t;
      c:=chr(t+48)+c;
    end;
  if nho>0 then c:=chr(nho+48)+c;
  writeln(fo,c);
  writeln(fo,max);
  close(fi);
  close(fo);
end.