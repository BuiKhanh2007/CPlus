var f1,f2: text;
        i,n,j: word; s:byte;
        a: array[1..10000] of string; c: string;
        b: array[1..10000] of byte;
begin
        assign(f1,'TROCHOI.INP');
        assign(f2,'TROCHOI.OUT');
        reset(f1);
        rewrite(f2);
        readln(f1,n);
        for i:=1 to n do
                begin
                readln(f1,a[i]); s:=0;
                for j:=1 to length(a[i]) do
                        if (a[i][j] >='0') and (a[i][j] <= '9') then s:= s+1;
                b[i]:=s;
                end;
        for i:=1 to n-1 do
                for j:=i+1 to n do
                        if b[i] > b[j] then
                                begin
                                s:= b[i];
                                b[i]:= b[j];
                                b[j]:=s;
                                c:= a[i];
                                a[i]:= a[j];
                                a[j]:=c;
                                end;
        for i:=1 to n do writeln(f2,a[i]);
        close(f1);close(f2);
end.
