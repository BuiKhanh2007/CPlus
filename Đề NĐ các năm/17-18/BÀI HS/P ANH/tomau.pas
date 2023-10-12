var fi,fo:text;
v,d,x,j,i,n,max:longint;
s:ansistring;
Function m(a,b,c:longint):longint;
 begin
  m:=a;
  If m<b then m:=b;
  If m<c then m:=c;
 End;
Begin
 assign(fi,'tomau.inp');reset(fi);
 assign(fo,'tomau.out');rewrite(fo);
 Readln(fi,n);
 For i:=1 to n do
  Begin
   Readln(fi,s);
   v:=0;
   x:=0;
   d:=0;
   For j:=1 to length(s) do
    Begin
     If (s[J]='V') then v:=v+1;
     If (s[j]='D') then d:=d+1;
     If (s[j]='X') then x:=x+1;
    End;
   If (v=d) and (v=x) then writeln(fo,(v*3):100)
    else
     Begin
      max:=m(v,d,x);
      If max=v then  writeln(fo,(d*2+x):100)
       else If max=x then  writeln(fo,(d*2+v):100)
        else writeln(fo,(x*2+v):100);
     End;
  End;
Close(fi);
Close(fo);
End.

