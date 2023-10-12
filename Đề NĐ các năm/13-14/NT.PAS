var i,d,b,k,j:word;
fi,fo:text;       n:array[1..1000]of longint;
function nt(var a:word):boolean;
var j:word;
begin
if a<2 then nt:=false;
nt:=true;
for j:=2 to trunc(sqrt(a)) do if  a mod j=0 then
begin
nt:=false; break;
end;
end;
begin
assign(fi,'nt.inp');
reset(fi);
assign(fo,'nt.out');
rewrite(fo);
while not eof(Fi) do
begin
       readln(fi,k);
       for i:=1 to k do readln(fi,n[i]);
       for j:=1 to k do
       begin
       b:=n[j];
       d:=0;
            for i:=2 to (b div 2)  do
            begin
            if (b mod i=0 )and(nt(i)) then d:=d+1;  end;
                  if nt(b) then d:=d+1;

       writeln(fo,d);
       end;   end;
       close(fi);
       close(fo);
       end.







