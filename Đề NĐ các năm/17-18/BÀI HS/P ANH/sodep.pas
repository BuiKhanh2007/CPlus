var fi,fo:text;
s,d,i,n,m:longint;
Begin
 assign(fi,'sodep.inp');reset(fi);
 assign(fo,'sodep.out');rewrite(fo);
 Readln(fi,n);
 m:=n;
 i:=2;
 s:=1;
 d:=0;
 While (n<>1) do
  Begin
   While (n mod i=0) do
    Begin
     n:=n div i;
     d:=d+1;
    End;
   s:=s*(d+1);
   d:=0;
   i:=i+1;
  End;
 If (m mod s=0) then Writeln(fo,'CO')
  else writeln(fo,'KHONG');
CLose(fi);
Close(fo);
End.
