const fi = 'submax.inp';
      fo = 'submax.out';
      nmax = 100000;
var i,n:longint;
        f:text;
    S:array[0..nmax] of int64;
    kq:int64;
    d,c:longint;

procedure nhapdulieu;
var f:text;
    i,a:longint;
begin
    s[0]:=0;
    assign(f,fi);
    reset(f);
       readln(f,n);
       for i:= 1 to n do
       begin
            readln(f,a);
            s[i]:=s[i-1]+a;
       end;
    close(f);
end;

procedure xuly;
var i,j:longint;
    max:int64;
    f:text;
begin
    max:=s[n];
    kq:=-200000000000000;
    for i:= n-1 downto 0 do
    begin
       if kq<max-s[i] then kq:=max-s[i];
       if s[i]>max then max:=s[i];
    end;
    assign(f,fo);
    rewrite(f);
    writeln(f,kq);
    close(f);
end;

begin
   nhapdulieu;
   xuly;
end.
















