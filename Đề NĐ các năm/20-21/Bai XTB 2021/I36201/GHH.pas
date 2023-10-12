program soganhoanhao;
var i,x,d,j,N:longint;
    A:array[1..100000] of longint;
    fi,fo:text;
Function Kt(M:longint):boolean;
var i:longint;
    t:int64;
begin
   t:=0;
   for i:=1 to round(sqrt(M)) do
     if M mod i =0 then
       if i<> M/i then t:=t+i+(M div i)
       else t:=t+i;
   if 2*M<=t then kt:=true else kt:=false;
end;
BEGIN
    assign(fi,'GHH.inp'); reset(fi);
    assign(fo,'GHH.out'); rewrite(fo);
    readln(fi,N);
    j:=1; d:=0;
    for i:=1 to N do
    begin
       read(fi,x);
       if kt(x) then
           begin
              inc(d);
              A[j]:=x;
              inc(j);
           end;
    end;
    writeln(fo,d);
    for i:=1 to j-1 do writeln(fo,A[i]);
    close(fi); close(fo);
END.