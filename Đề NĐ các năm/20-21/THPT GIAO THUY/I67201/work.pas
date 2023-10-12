var fa,fb:text;
    n,i,j:longint;
    a,b,c:array[-1..1000006] of longint;
    function min(x,y,z:longint):longint;
    begin
      if x>y then x:=y;
      if x>z then x:=z;
      exit(x);
    end;
begin
    assign(fa,'work.inp');reset(fa);
    assign(fb,'work.out');rewrite(fb);
    readln(Fa,n);
    for i:=1 to n do
      read(Fa,a[i]);
    readln(Fa);
    c[1]:=a[1];
    for i:=1 to n-1 do
      read(fa,b[i]);
    for i:=2 to n do
        c[i]:=min(c[i-2]+a[i-1]+a[i],c[i-2]+b[i-1],c[i-1]+a[i]);
    write(fb,c[i]);
close(fa);
close(fb);
end.
