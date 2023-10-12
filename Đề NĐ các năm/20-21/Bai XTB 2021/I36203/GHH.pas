program so_gan_hoan_hao;
var n:integer;
    i,d:longint;
    A,B:array[1..1000] of longint;
    fi,fo:text;
function k(n:longint):longint;
   var i:longint;
   begin
     k:=0;
     for i:=1 to round(sqrt(n)) do
          if n mod i=0 then
               if (i<>n/i) then k:=k+i+(n div i)
               else k:=k+i;
   end;
Begin
  assign(fi,'GHH.inp'); reset(fi);
  assign(fo,'GHH.out'); rewrite(fo);
  readln(fi,n);
  d:=0;
  for i:=1 to n do
         begin
           readln(fi,A[i]);
           if (A[i]<>0) and (A[i]<=1000000) then
                        if  (2*A[i]<=K(A[i])) then
                                               begin
                                                  inc(d);
                                                  B[d]:=A[i];
                                               end;
         end;
  writeln(fo,d);
  for i:=1 to d do writeln(fo,B[i]);
  close(fi); close(fo);
End.
