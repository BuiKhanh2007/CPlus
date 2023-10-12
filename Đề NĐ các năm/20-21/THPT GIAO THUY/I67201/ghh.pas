var fa,fb:text;
    n,i,j,dem:longint;
    a:array[0..10005] of longint;
    function tu(x:longint):longint;
    var
        t,s:longint;
    begin
      s:=0;
      for t:=1 to trunc(Sqrt(x)) do
        begin
          if x mod t = 0 then
                s:=s+t+ x div t;
        end;
      if trunc(sqrt(x))=sqrt(X) then s:=s-trunc(Sqrt(x));
      exit(s);
    end;
begin
    assign(fa,'ghh.inp');reset(fa);
    assign(fb,'ghh.out');rewrite(fb);
    readln(fa,n);
    for i:=1 to n do
      begin
        readln(Fa,j);
        if 2*j<=tu(j) then begin inc(dem);a[dem]:=j; end;
      end;
    writeln(fb,dem);
    for i:=1 to dem do
       writeln(fb,a[i]);
close(fa);
close(fb);
end.
