var f1,f2:text;
    n,i,t,j:word;
    a,s:longword;
    b:array[1..10000] of longword;
begin
    assign(f1,'GHH.INP');
    assign(f2,'GHH.OUT');
    reset(f1);
    rewrite(f2);
    readln(f1,n);
    for i:=1 to n do
        begin
            readln(f1,a);
            s:=0;
            for j:=1 to round(sqrt(a)) do
               if a mod j = 0 then
                  if j*j <> a then s:=s + j + a div j
                  else s:=s+j;
            if s>=a*2 then begin t:=t+1;b[t]:=a end;
        end;
    writeln(f2,t);
    for i:=1 to t do writeln(f2,b[i]);
    close(f1);
    close(f2);
end.















