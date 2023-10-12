var f1,f2: text;
    n,I: integer;
    c: array [1..10000] of longint;
    a,s,j,k: longint;
begin
        assign(f1,'GHH.INP');
        assign(f2,'GHH.OUT');
        reset(f1);
        rewrite(F2);
        readln(f1,n);
        while i<n do
           begin
             i:=i+1;
             readln(f1,a);
             s:=0;
             for j:=1 to round(int(sqrt(a))) do
                if a mod j=0 then
                   if a div j <> round(int(sqrt(a))) then s:=s+j+( a div j) else s:=s+j;
             if 2*a<=s then
                 begin
                    k:=k+1;
                    c[k]:=a;
                 end;
           end;
        writeln(f2,k);
        for i:=1 to k do writeln(f2,C[i]);
        close(f1);
        close(f2);
end.















