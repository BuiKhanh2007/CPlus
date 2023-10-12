var fi,fo:text;
    t,n,k,j,i,d:longint;
    f,f0,f1:ansistring;
begin
  assign(fi,'fib2.inp');reset(fi);
  assign(fo,'fib2.out');rewrite(fo);
  readln(fi,t);
  for j:=1 to t do
    begin
      readln(fi,n,k);
      if n=0 then writeln(fo,'1')
      else
        if n=1 then writeln(fo,0)
          else
            begin
              f0:='a';
              f1:='b';
              i:=2;
              f:='';
              while (i<=n)and(length(f)<k) do
                begin
                  f:=f0+f1;
                  f0:=f1;
                  f1:=f;
                end;
              d:=0;
              for i:=1 to k do
               if f[i]='a'then d:=d+1;
               writeln(fo,d);

          end;
    end;
  close(fi);
  close(fo);
end.


