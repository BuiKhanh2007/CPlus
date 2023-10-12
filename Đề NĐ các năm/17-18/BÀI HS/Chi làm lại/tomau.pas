var fi,fo:text;
    n,i,k,sd,sx,sv:longint;
    s:ansistring;
function min(x,y,z:longint):longint;
  begin
    min:=maxlongint;
    if min>x then min:=x;
    if min>y then min:=y;
    if min>z then min:=z;
  end;
begin
  assign(fi,'tomau.inp');reset(fi);
  assign(fo,'tomau.out');rewrite(fo);
  readln(fi,n);
  for k:=1 to n do
    begin
      readln(fi,s);
      sd:=0;
      sv:=0;
      sx:=0;
      for i:=1 to length(s) do
        begin
          if s[i]='D' then sd:=sd+1;
          if s[i]='X' then sx:=sx+1;
          if s[i]='V' then sv:=sv+1;
        end;
      writeln(fo,min(sd*2+sx,sx*2+sv,sv*2+sd));
    end;
  close(fi);
  close(fo);
end.
