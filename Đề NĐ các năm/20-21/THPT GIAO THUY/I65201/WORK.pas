var  f1,f2: text;
     a,b,c: array[1..1000000] of integer;
     i,n,t,t1: longint;
begin
  assign(f1,'WORK.INP'); reset(f1);
  assign(f2,'WORK.OUT'); rewrite(f2);
  readln(f1,n);
  for i:=1 to n do read(f1,a[i]); readln(f1);
  for i:=1 to n-1 do read(f1,b[i]);
  for i:=1 to n-1 do c[i]:=a[i]+a[i+1]-b[i];
  i:=1;
  while i<=n-1 do
    if (c[i]<0) and (c[i+1]<0) then i:=i+1
      else if c[i]>=c[i+1]
        then begin t1:=t1+c[i]; i:=i+2; end
        else begin t1:=t1+c[i+1]; i:=i+3; end;
  for i:=1 to n do t:=t+a[i];
  writeln(f2,t-t1);
  close(f1); close(f2);
end.
