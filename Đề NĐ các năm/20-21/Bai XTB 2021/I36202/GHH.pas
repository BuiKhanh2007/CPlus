program soganhoanhao;
const fi='GHH.inp';
      fo='GHH.out';
var n,t,k:longint;
    a,c:array[1..10001] of longint;

 function kt(a:longint):boolean;
var  s,i,j,d:longint;
     b:array[1..10000] of integer;
  begin
  s:=a+1;
  for i:=2 to a div 2 do
  if a mod i = 0 then s:=s+i;
  if 2*a<=s then exit(true);
  exit(false);
    end;


procedure nhap;
var f:text;
    i:longint;
begin
  assign(f,fi);
  reset(f);
  readln(f,n);
  t:=0; k:=0;
  for i:=1 to n do
    begin
      readln(f,a[i]);
      if kt(a[i]) then
      begin
        inc(t);  inc(k);
        c[k]:=a[i];
      end;
      end;
   close(f);
end;
procedure xuli;
var f:text;
   i:longint;
begin
  assign(f,fo);
  rewrite(f);
  writeln(f,t);
  for i:=1 to k do writeln(f,c[i]);
  close(f);
end;
begin
nhap;
xuli;
end.
