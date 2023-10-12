var fi,fo:text;
a:array[1..100] of integer;
d,v,x,n,t,j,i:longint;
ch:char;
Function min(a,b,c:longint):longint;
 Begin
  min:=a;
  If min>b then min:=b;
  If min>c then min:=c;
 End;
Begin
 assign(fi,'tomau.inp');reset(fi);
 assign(fo,'tomau.out');rewrite(fo);
 Readln(fi,t);
 While t<>0 do
  Begin
   n:=0;
   While not EOLN(fi) do
    Begin
     n:=n+1;
     Read(fi,ch);
     If (ch='D') then a[n]:=0;
     If (ch='X') then a[n]:=1;
     If (ch='V') then a[n]:=2;
    End;
    Readln(fi);
    d:=0;
    x:=0;
    v:=0;
    For i:=1 to n do
     Begin
      d:=d+(3-a[i]+0) mod 3;
      x:=x+(3-a[i]+1) mod 3;
      v:=v+(3-a[i]+2) mod 3;
     End;
    Writeln(fo,min(d,v,x));
    t:=t-1;
   End;
 Close(fi);
 Close(fo);
End.
