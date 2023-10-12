Var   a,b,e,f,g,h:longint;
      f1,f2:text;
Function tuoc(k:longint):longint;
Var
i,s:longint;
Begin
S:=1+k;
For i:=2 to trunc(sqrt(k)) do
If k mod i =0 then s:=s+i+k div i;
If trunc(sqrt(k))=sqrt(k) then s:=s-trunc(sqrt(k));
tuoc:=s;
end;
Function ucln(m,n:longint):longint;
Var
du:longint;
Begin
while m mod n <> 0 do
   begin
        du:=m mod n;
        m:=n;
        n:=du;
   end;
  exit(n);
end;
begin
assign(f1,'SOTT.INP');reset(f1);
assign(f2,'SOTT.OUT');rewrite(f2);
readln(f1,a,b);
e:=ucln(tuoc(a),a);
f:=ucln(tuoc(b),b);
g:=a div e;
e:=tuoc(a) div e;
h:=b div f;
f:=tuoc(b) div f;
if (g=h)and(e=f) then
        begin
                writeln(f2,f);
                write(f2,h);
        end
else
        write(f2,-1);
close(f1);
close(f2);
end.
