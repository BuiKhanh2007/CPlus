var fi,fo:text;
    x:ansistring;
    s,max,sd,sv,sx,n,k,i:longint;
begin
  assign(fi,'tomau.inp');reset(fi);
  assign(fo,'tomau.out');rewrite(fo);
  readln(fi,n);
  for k:=1 to n do
    begin
      readln(fi,x);
      max:=0;
      sd:=0;
      sx:=0;
      sv:=0;
      s:=0;
      for i:=1 to length(x) do
        begin
          if x[i]='D' then sd:=sd+1;
          if x[i]='X' then sx:=sx+1;
          if x[i]='V' then sv:=sv+1;
        end;
      if sd>max then max:=sd;
      if sv>max then max:=sv;
      if sx>max then max:=sx;
      if (sd=sx)and(sx=sv) then s:=sd*3
      else
        if (sd=sv)and(sv=max) then s:=max+2*sx
        else
          if (sd=sx)and(sx=max) then s:=max+2*sv
          else
            if (sx=sv)and(max=sv)then s:=max+2*sd
            else
              if max=sd then s:=sx*2+sv
              else
                if max=sx then s:=sv*2+sd
                else
                  if max=sv then s:=sd*2+sx;
      writeln(fo,s);
    end;
  close(fi);
  close(fo);
end.

