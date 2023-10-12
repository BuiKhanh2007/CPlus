var  f1,f2: text;
     a,b: array[0..1000001] of longint;
     n,i,j,t,u: longint;
procedure  xoa(k:longint);
  var  i: longint;
  begin  for i:=k to n do a[i]:=a[i+1]; n:=n-1; end;
begin
  assign(f1,'SDB.INP'); reset(f1);
  assign(f2,'SDB.OUT'); rewrite(f2);
  readln(f1,n);
  for i:=1 to n do readln(f1,a[i]);
  while n>0 do begin
    u:=a[1]; t:=1;
    for i:=2 to n do if a[i]=u then t:=t+1;
    if t=1 then begin j:=j+1; b[j]:=u; end;
    i:=1;
    while i<=n do if a[i]=u then xoa(i) else i:=i+1;
  end;
  writeln(f2,j);
  for i:=1 to j do writeln(f2,b[i]);
  close(f1); close(f2);
end.
