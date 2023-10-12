var f1,f2: text;
        i,n,k: word;
        m,j,s: longint;
        a: array[1..10000] of longint;
begin
        assign(f1,'GHH.INP');
        assign(f2,'GHH.OUT');
        reset(f1);
        rewrite(f2);
        readln(f1,n);
        for i:=1 to n do
                begin
                readln(f1,m);s:=0;
                for j:= 1 to trunc(sqrt(m)) do
                        if m mod j = 0 then
                                if m div j <> trunc(sqrt(m)) then s:= s+j + (m div j)
                                        else s:= s+ j;
                if 2*m <= s then begin k:= k+1; a[k]:=m; end;
                end;
        writeln(f2,k);
        for i:= 1 to k do writeln(f2,a[i]);
        close(f1);close(f2);
end.

