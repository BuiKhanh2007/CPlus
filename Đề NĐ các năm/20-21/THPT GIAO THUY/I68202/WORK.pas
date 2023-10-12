var f1,f2: text;
        i,n,j,s: longint;
        a: array[1..1000000] of byte;
        b: array[1..1000050] of byte;
begin
        assign(f1,'WORK.INP');
        assign(f2,'WORK.OUT');
        reset(f1);
        rewrite(f2);
        readln(f1,n);
       for i:=1 to n do read(f1,a[i]);
        i:=2; j:=1; read(f1,b[j],b[j+1]);
        while (i <= n) and  (j<=n-1) do
                begin
                if (a[i] + a[i-1] - b[j] <=0) then
                        begin
                        s:= s+ a[i-1]; i:= i+1; j:= j+1;
                        if b[j] = 0 then read(f1,b[j]);
                        if b[j+1] = 0 then read(f1,b[j+1]);
                        end
                else
                                if (a[i+1] + a[i]- b[j+1] <=0) then
                                        begin
                                        s:= s+ b[j];
                                        i:= i+2;
                                        j:= j+2;
                                         if b[j] = 0 then read(f1,b[j]);
                        		if b[j+1] = 0 then read(f1,b[j+1]);
                                        end
                                else
                                        if (a[i]+ a[i-1] - b[j]) < (a[i]+ a[i+1] - b[j+1]) then
                                                begin
                                                s:= s+ a[i-1];
                                                i:= i+ 1;
                                                j:= j+1;
                                                 if b[j] = 0 then read(f1,b[j]);
                        			if b[j+1] = 0 then read(f1,b[j+1]);
                                                end
                                        else
                                                begin
                                                s:= s+ b[j];
                                                i:= i+2;
                                                j:= j+2; if b[j] = 0 then read(f1,b[j]);
                        			if b[j+1] = 0 then read(f1,b[j+1]);
                                                end;
                end;
        if i = n+1 then s:= s+ a[n];
        writeln(f2,s);

        close(f1);close(f2);
end.



