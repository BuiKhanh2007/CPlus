var fi,fo:text;
    f:array[0..1000]of int64;
    i,u,v,h,d,c,t,de:longint;
function nto(n:longint):boolean;
var i:longint;
  begin
    if n<=1 then nto:=false
    else
      begin
        nto:=true;
        for i:=2 to trunc(sqrt(n)) do
          if (n<>i)and(n mod i=0)then
            begin
              nto:=false;
              break;
            end;
      end;
  end;
begin
  assign(fi,'snto.inp');reset(fi);
  assign(fo,'snto.out');rewrite(fo);
  readln(fi,u,v);
  f[1]:=2;
      f[2]:=3;
      f[3]:=5;
      f[4]:=7;
      d:=1;
      h:=4;
      while f[h]<=v do
        begin
          c:=h;
          for i:=d to c do
            begin
              t:=f[i]*10+1;
              if nto(t) then
                begin
                  h:=h+1;
                  f[h]:=t;
                end;
              t:=f[i]*10+3;
              if nto(t) then
                begin
                  h:=h+1;
                  f[h]:=t;
                end;
              t:=f[i]*10+7;
              if nto(t) then
                begin
                  h:=h+1;
                  f[h]:=t;
                end;
              t:=f[i]*10+9;
              if nto(t) then
                begin
                  h:=h+1;
                  f[h]:=t;
                end;
            end;
          if h=c then break else
            begin
              d:=c+1;
              c:=h;
            end;
       end;
       de:=0;
      for i:=1 to h do
        if (f[i]>=u)and(f[i]<=v) then de:=de+1;
    writeln(fo,de);
close(fi);
close(fo);
end.



