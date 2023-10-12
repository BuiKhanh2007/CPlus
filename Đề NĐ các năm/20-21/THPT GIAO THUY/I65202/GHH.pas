var f1,f2:text; n,i,a,k:longint;
b:array[1..10000] of longint;
function uoc(a:longint):boolean;
var i:longint; t:qword;
begin
 t:=0;
 for i:=2 to a div 3 do
  if a mod i=0 then t:=t+i;
  if odd(a) then t:=t+1+a else t:=t+1+a+a div 2;
  if 2*a<=t then exit(true) else exit(false);
end;
begin
 assign(f1,'GHH.inp');reset(f1);
 assign(f2,'GHH.out');rewrite(f2);
 readln(f1,n); k:=0;
 for i:=1 to n do
 begin
  readln(f1,a);
  if uoc(a) then begin k:=k+1; b[k]:=a; end;
 end;
 writeln(f2,k);
 for i:=1 to k do writeln(f2,b[i]);
 close(f1);close(f2);
end.