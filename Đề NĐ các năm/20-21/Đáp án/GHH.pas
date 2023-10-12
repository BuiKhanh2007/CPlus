Program Gan_hoanhao;
var f1,f2:text;
    n,j, i,m: longint;
    a:array[1..10000] of longint;
    b:array[1..10000] of longint;

function kt(a:longint):boolean;
var j:longint;
    tong:int64;
 begin
  tong:=1;
    for j:= 2 to a div 2 do
     if a mod j= 0 then tong:=tong+j;
  if (a<= tong) then kt:=true
  else kt:=false;
 end;
begin

 assign(f1,'GHH.inp');
 reset(f1);
 assign(f2,'GHH.out');
 rewrite(f2);
 readln(f1,n);
 for i:=1 to n do
   begin
   readln(f1,a[i]);
   if kt(a[i])=true then
   begin
    m:=m+1;
    b[m]:=a[i];
   end;
   end;
   writeln(f2,m);
   for j:= 1 to m do
   writeln(f2,b[j],' ');
 close(f1);
 close(f2);
End.
