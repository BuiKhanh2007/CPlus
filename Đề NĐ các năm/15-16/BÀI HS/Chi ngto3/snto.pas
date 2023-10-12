var fi,fo:text;
    a:array[1..100]of int64;
    d,c,u,k,i,m,n,j:longint;
function nto(n:longint):boolean;
var i:longint;
  begin
    if n<2 then exit(false)
    else
      for i:=2 to trunc(sqrt(n)) do
      if n mod i=0 then exit(false);
    exit(true);
  end;
begin
  assign(fi,'snto.inp');reset(fi);
  assign(fo,'snto.out');rewrite(fo);
  readln(fi,m,n);
  a[1]:=2;
  a[2]:=3;
  a[3]:=5;
  a[4]:=7;
  d:=1;
  c:=4;
  u:=4;
  for i:=2 to 18 do
    begin
      for j:=d to c do
        begin
          k:=1;
          while k<=9 do
            begin
              if nto(a[j]*10+k) then
                begin
                  u:=u+1;
                  a[u]:=a[j]*10+k;
                end;
              k:=k+2;
            end;
        end;
      if u=c then break else
        begin
          d:=c+1;
          c:=u;
        end;
    end;
  d:=0;
  for i:=1 to c do
    if (a[i]>=m)and(a[i]<=n) then d:=d+1
    else if a[i]>n then break;
  writeln(fo,d);
  close(fi);
  close(fo);
end.
