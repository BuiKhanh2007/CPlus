var f1,f2:text; n,i,j:longint;
a,b:array[-1..1000000] of byte;
l:array[-1..1000000] of longint;
function min(a,b,c:longint):qword;
var mi:longint;
begin
 if a>b then mi:=b else mi:=a;
 if mi>c then mi:=c;
 exit(mi);
end;
begin
 assign(f1,'WORK.inp');reset(f1);
 assign(f2,'WORK.out');rewrite(f2);
 readln(f1,n); fillchar(l,sizeof(l),0);
 for i:=1 to n do read(f1,a[i]);
 for i:=1 to n-1 do read(f1,b[i]); 
 for i:=1 to n do
  l[i]:=min(l[i-1]+a[i],l[i-2]+b[i-1],l[i-2]+a[i-1]+a[i]);
 write(f2,l[n]);
 close(f1);close(f2);
end.