var f1,f2:text; n,i,j:longint;tg:string;
a:array[1..10000] of string;
begin
 assign(f1,'TROCHOI.inp');reset(f1);
 assign(f2,'TROCHOI.out');rewrite(f2);
 readln(f1,n);
 for i:=1 to n do readln(f1,a[i]);
 for i:=n downto 2 do
  for j:=i-1 downto 1 do
   if length(a[i])<length(a[j]) then
    begin
     tg:=a[i]; a[i]:=a[j]; a[j]:=tg;
    end;
  for i:=1 to n do writeln(f2,a[i]);
 close(f1);close(f2);
end.