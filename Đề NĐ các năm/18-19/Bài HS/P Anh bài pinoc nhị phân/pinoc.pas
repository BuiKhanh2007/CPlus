var fi,fo:text;
n,m,i,t,dau,cuoi,max,h:longint;
b:array[1..1000000] of longint;
Procedure qs(d,c:longint);
  var tg,g,i,j:longint;
    Begin
      g:=b[(d+c) div 2];
      i:=d;
      j:=c;
      Repeat
        While (i<=n) and (b[i]>g) do i:=i+1;
        While (j>=0) and (b[j]<g) do j:=j-1;
        If (i<=j) then
          Begin
            tg:=b[i];
            b[i]:=b[j];
            b[j]:=tg;
            i:=i+1;
            j:=j-1;
          End;
      until i>j;
      If i<c then qs(i,c);
      If d<j then qs(d,j);
    End;
Function kt(h:longint):boolean;
  var i:longint;
  s:int64;
    Begin
      s:=0;
      For i:=1 to n do
      If (b[i]>h) then s:=s+b[i]-h;
      If s>=m then exit(true);
      exit(false);
    End;
Begin
  assign(fi,'pinoc.inp');reset(fi);
  assign(fo,'pinoc.out');rewrite(fo);
  Readln(fi,n,m);
  FOr i:=1 to n do read(fi,b[i]);
  qs(1,n);
  max:=b[1];
  dau:=0;
  cuoi:=max;
  While dau<=cuoi do
    Begin
      h:=(dau+cuoi) div 2;
      If (kt(h)) then
        Begin
          t:=h;
          dau:=h+1;
        End
      else cuoi:=h-1;
    End;
  Writeln(fo,t);
Close(fi);
Close(fo);
End.
