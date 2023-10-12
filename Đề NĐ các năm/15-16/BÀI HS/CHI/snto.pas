var fi,fo:text;
    u,v,i,d,h:longint;
    ok:boolean;
function nto(n:longint):boolean;
var i:longint;
  begin
    if n<=1 then nto:=false
    else
      begin
        nto:=true;
        for i:=2 to trunc(sqrt(n)) do
          if (n <>i)and(n mod i=0) then
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
  for i:=u to v do
    begin
      h:=i*10;
      ok:=true;
      repeat
        h:=h div 10;
        if (h<>0)and(nto(h)=false) then
          begin
            ok:=false;
            break;
          end;
        //h:=h div 10;
      until h=0;
      if ok=true then d:=d+1;
    end;
  writeln(fo,d);
  close(fi);
  close(fo);
end.
