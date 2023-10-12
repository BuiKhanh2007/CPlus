var fi,fo:text;
n,d:longint;
s:ansistring;
a,b:array[0..10000]of ansistring;
Function nhan(s:ansistring):ansistring;
var nho,i,t:longint;
 Begin
  nho:=0;
  For i:=length(s) downto 1 do
   Begin
    t:=(ord(s[i])-48)*2+nho;
    s[i]:=chr(t mod 10+48);
    nho:=t div 10;
   End;
  If nho>0 then s:='1'+s;
  exit(s);
 End;
Procedure tru;
var s,x:ansistring;
nho,i,t:longint;
 Begin
  While (length(a[d-1]))<(length(b[d])) do a[d-1]:='0'+a[d-1];
  nho:=0;
  s:=b[d];
  x:=a[d-1];
  For i:=length(s) downto 1 do
   Begin
    t:=ord(s[i])-48-ord(x[i])+48-nho;
    if t<0 then
     Begin
      t:=t+10;
      nho:=1;
     End
    else nho:=0;
   a[d]:=chr(t+48)+a[d];
  End;
 End;
Begin
 assign(fi,'tile.inp');reset(fi);
 assign(fo,'tile.out');rewrite(fo);
 d:=1;
 a[d]:='1';
 b[d]:='2';
 While not seekEOF(fi) do
  Begin
   Readln(fi,n);
   While (d<n) do
    Begin
     d:=d+1;
     b[d]:=nhan(b[d-1]);
     tru;
    End;
   s:=a[n];
   While (s[1]='0') do delete(s,1,1);
   Writeln(fo,s);
  End;
 Close(fi);
 Close(fo);
End.



