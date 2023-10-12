program so_dac_biet;
type mang=array[1..1000000] of longint;
var A,B:mang;
    i,n,dem,j,k,t,d:longint;
    fi,fo:text;
Begin
  assign(fi,'SDB.inp'); reset(fi);
  assign(fo,'SDB.out'); rewrite(fo);
  readln(fi,n);
  for i:=1 to n do readln(fi,A[i]);
  i:=1; dem:=0;
  while i<=n do
   begin
     d:=0;
     j:=i+1;
     B[i]:=0;
     while j<=n do
         if A[i]=A[j] then
                          begin
                            inc(B[i]);
                            for t:=j to n do A[t]:=A[t+1];
                            n:=n-1;
                          end
         else inc(j);
     if B[i]<>0 then
                  begin
                    for k:=i to n do A[k]:=A[k+1];
                    n:=n-1;
                  end
     else inc(i);
   end;
  writeln(fo,n);
  for i:=1 to n do writeln(fo,A[i]);
  close(fi); close(fo);
End.
