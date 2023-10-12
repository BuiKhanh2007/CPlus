 program chinhphuong;
 var f1,f2:text;
 n,x:longint;


 begin
 assign(f1,'cphuong.inp');
 reset(f1);
 assign(f2,'cphuong.out');
 rewrite(f2);
 readln(f1,n);
while not eof(f1)do
begin
readln(f1,x);

 if trunc(sqrt(x))*trunc(sqrt(x))=x then writeln(f2,1)
 else writeln(f2,0);
end;

 close(f1);
 close(f2);
 end.
