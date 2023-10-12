 var a,b,c,res,du1,du2,n1,n2:longint;
 Begin
  assign(input,'coca.inp'); reset(input);
  assign(output,'coca.out'); rewrite(output);
 while not eof(input) do
 begin
 readln(a,b,c);
 res:=0;
           du1:=a mod c;
           n1:=a div c;
           du2:=b mod c;
           n2:=b div c;
        res:=n1+n2+(du1+du2)div c;
        a:=(du1+du2)mod c + res;
        while a>=c do
        begin
        res:=res+a div c;
        a:=a mod c+a div c;
        end;
      writeln(res);
      end;
      close(input);
      close(output);
end.