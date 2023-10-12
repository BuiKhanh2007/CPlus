var fi,fo:text;
    k,m,n,i,d,j,t,a:longint;
    s,x:ansistring;
begin
  assign(fi,'lucasa.inp');reset(fi);
  assign(fo,'lucasa.out');rewrite(fo);
  readln(fi,k);
  for j:=1 to k do
    begin
      readln(fi,m,n);
      if m>9376 then write(fo,0)
      else if m>625 then
        begin
          if n<9376 then write(fo,0) else write(fo,1);
        end
      else
      begin
        d:=0;
        for i:=m to n do
          if (i mod 10=5)or(i mod 10=1)or(i mod 10=6) then
            begin
              str(i,s);
              t:=i*i;
              str(t,x);
              a:=pos(s,x);
              if a=length(x)-length(s)+1 then d:=d+1;
           end;
       writeln(fo,d);
      end;
    end;
  close(fi);
  close(fo);
end.

