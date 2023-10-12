var  f1,f2: text;
     a: array[1..10000] of longint;
     n,i,j,k: longint; d:boolean;
function  gan(a: longint): boolean;
  var i,t: longint;
  begin
    t:=0;
    for i:=1 to (a div 2) do if a mod i=0 then t:=t+i;
    t:=t+a;
    if (a*2)<=t then exit(true) else exit(false);
    end;
begin
  assign(f1,'GHH.INP'); reset(f1);
  assign(f2,'GHH.OUT'); rewrite(f2);
  readln(f1,n); j:=0;
  for i:=1 to n do begin
    readln(f1,k); d:=gan(k);
    if d=true then begin j:=j+1; a[j]:=k; end;
  end;
  writeln(f2,j);
  for i:=1 to j do writeln(f2,a[i]);
  close(f1); close(f2);
end.