var f1,f2:text; n,i,j,t:longint; s,s1,s2:ansistring; b:int64;
a:array[1..1000000] of int64;
function st(n:int64) :ansistring;
var s:ansistring;
begin
 str(n,s); exit(s);
end;
function va(s:ansistring): int64;
var n:int64;
begin
 val(s,n); exit(n);
end;
begin
 assign(f1,'SDB.inp');reset(f1);
 assign(f2,'SDB.out');rewrite(f2);
 readln(f1,n);s:='|';
 for i:=1 to n do
 begin
  readln(f1,b); s2:='|'+st(b)+'|';
  if (pos(s2,s)=0) and (pos(s2,s1)=0) then s:=s+s2
  else begin
  delete(s,pos(s2,s),length(s2));
  s1:=s1+s2; end;
 end; j:=0;  delete(s,1,2);
 while pos('||',s)<>0 do
 begin
  j:=j+1; t:=pos('||',s);
  a[j]:=va(copy(s,1,t-1));
  delete(s,1,t+1);
 end;
 j:=j+1; a[j]:=va(copy(s,1,pos('|',s)-1));
 writeln(f2,j);
 for i:=1 to j do writeln(f2,a[i]);
 close(f1);close(f2);
end.
