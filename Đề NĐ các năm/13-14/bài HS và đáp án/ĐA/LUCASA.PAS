var
f1,f2:text;
a:array[0..45000] of byte;
i,x,d,m,n,k:longint;
s1,s2:string;
begin
assign(f1,'lucasa.inp');
reset(f1);
assign(f2,'lucasa.out');
rewrite(f2);
a[0]:=0;
for i:=1 to 45000 do
   begin
   d:=0;
   if (i mod 10 = 1) or (i mod 10 = 6) or (i mod 10 = 5) then
        begin
        str(i,s1);
        str(i*i,s2);
        if copy(s2,length(s2)- length(s1)+1,length(s1)) = s1 then d:=d+1;
        end;
    a[i]:=a[i-1]+d;
    end;
readln(f1,k);
for i:=1 to k do
 begin
 readln(f1,n,m);
 writeln(f2,a[m]-a[n-1]);
 end;
 close(f1);
 close(f2);
end.

