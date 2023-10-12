program BAI5;

var d: array[1..5000] of longint;
    n: longint;


function anhem(x,y: longint): boolean;
var z, dem: longint;
begin
   z:=x xor y;
   dem:=0;
   repeat
      dem:=dem+z mod 2;
      z:=z div 2;
   until z=0;
   anhem:=(dem<=1);
end;

var kq,i,j,u: longint;

BEGIN
   assign(input,'GEN.INP'); reset(input);
   assign(output,'GEN.OUT'); rewrite(output);
   read(n);
   for i:=1 to 5000 do d[i]:=0;
   for i:=1 to n do
      begin
         read(u);
         inc(d[u]);
      end;
   kq:=0;
   for i:=1 to 5000 do
      if d[i]<>0 then
         begin
            kq:=kq+d[i]*(d[i]-1) div 2;
            for j:=i-1 downto 1 do
               if (d[j]<>0) and anhem(i,j) then
                  kq:=kq+d[i]*d[j];
         end;
   writeln(kq);
   close(input); close(output);
END.
