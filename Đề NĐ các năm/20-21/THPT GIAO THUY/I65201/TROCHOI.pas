var  f1,f2: text;
     a: array[1..10000] of string;
     b,c: array[1..10000] of longint;
     n,i,j,tg,k,t: longint;
begin
  assign(f1,'TROCHOI.INP'); reset(f1);
  assign(f2,'TROCHOI.OUT'); rewrite(f2);
  readln(f1,n);
  for i:=1 to n do readln(f1,a[i]);
  for i:=1 to n do c[i]:=i;
  for i:=1 to n do begin
    for j:=1 to length(a[i]) do if a[i][j] in ['0'..'9'] then inc(t);
    k:=k+1; b[k]:=t; t:=0; end;
  for i:=1 to n-1 do for j:=i+1 to n do if b[i]>b[j] then begin
    tg:=b[i]; b[i]:=b[j]; b[j]:=tg;
    tg:=c[i]; c[i]:=c[j]; c[j]:=tg; end;
  for i:=1 to n-1 do for j:=i+1 to n do if b[i]=b[j] then
    if c[i]>c[j] then begin
      tg:=b[i]; b[i]:=b[j]; b[j]:=tg;
      tg:=c[i]; c[i]:=c[j]; c[j]:=tg; end;
  for i:=1 to n do writeln(f2,a[c[i]]);
  close(f1); close(f2);
end.