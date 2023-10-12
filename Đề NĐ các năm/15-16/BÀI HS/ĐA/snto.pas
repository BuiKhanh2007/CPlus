var fi,fo:text;
    n:longint;
    i,j,q,d,d1,d2,t,b,w:longint;
    a:int64;
    x:array[1..100000000] of longint;
function nto(a:int64):boolean;
var s:longint;
begin
   nto:=true;
   for s:=2 to trunc(sqrt(a)) do
      if a mod s =0 then
         begin
            nto:=false;
            break;
         end;
end;
begin
   assign(fi,'snt_ha.inp');reset(fi);
   readln(fi,n);
   close(fi);
   assign(fo,'snt_ha.out');rewrite(fo);
   for i:=2 to 9 do
    if nto(i)=true then
      begin
         d:=d+1;
         x[d]:=i;
         t:=i;
           repeat
             w:=d1;
             d1:=0;
             for q:=d-w to d do
             begin
             t:=x[q];
             for j:=1 to 9 do
             if j mod 2 <>0 then
              begin
                 a:=t;
                 a:=a*10+j;
                 if nto(a)=true then
                    begin
                     if a>n then break
                     else
                       d:=d+1;
                       d1:=d1+1;
                       x[d]:=a;
                    end;
              end;
              end;
           until a>n
      end;
    writeln(fo,d);
   close(fo);
end.
