VAR a:Array[1..30000]of Longint;
    i,n:Longint;
    fi,fo:text;
Procedure qs(d,c:Longint);
VAR p,q,g,tg:Longint;
BEGIN
 p:=d;
 q:=c;
 g:=a[(d+c)div 2];
 Repeat
  While(a[p]<g)do p:=p+1;
  While(a[q]>g)do q:=q-1;
  If p<=q then
   BEGIN
    tg:=a[p];
    a[p]:=a[q];
    a[q]:=tg;
    p:=p+1;
    q:=q-1;
   END;
 Until p>q;
 If q>d then qs(d,q);
 If p<c then qs(p,c);
END;
BEGIN
 Assign(fi,'manv.inp');Reset(fi);
 Assign(fo,'manv.out');Rewrite(fo);
 Readln(fi,n);
 For i:=1 to n do Readln(fi,a[i]);
 qs(1,n);
 For i:=1 to n do
  If a[i]<>i then Break;
 If(i=n)and(a[n]=n) then Writeln(fo,n+1) else Writeln(fo,i);
 Close(fi);
 Close(fo);
END.