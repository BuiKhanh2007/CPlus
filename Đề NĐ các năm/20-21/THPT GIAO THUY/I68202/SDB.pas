var f1,f2: text;
        i,n,j: longint;
        a,c: array[1..1000000] of longint;
        b: array[1..1000000000] of byte;
begin
        assign(f1,'SDB.INP');
        assign(f2,'SDB.OUT');
        reset(f1);
        rewrite(f2);
        readln(f1,n);
        for i:=1 to n do
                begin
                readln(f1,a[i]);
                if b[a[i]] = 0 then b[a[i]] :=1 else b[a[i]]:=2;
                end;
        for i:=1 to n do
                if b[a[i]] = 1 then
                        begin
                        j:= j+1;
                        c[j]:= a[i];
                        end;
                writeln(f2,j);
        for i:=1 to j do writeln(f2,c[i]);

        close(f1);close(f2);
end.