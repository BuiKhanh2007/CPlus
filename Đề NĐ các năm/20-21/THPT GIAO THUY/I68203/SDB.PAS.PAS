var f1,f2: text;
    n,i,j: longint;
    s: ansistring;
    s1,s2: string;
    a,b: array [1..1000000] of string;
begin
        assign(f1,'SDB.INP');
        assign(f2,'SDB.OUT');
        reset(f1);
        rewrite(F2);
        readln(f1,n);
        for i:=1 to n do
            begin
               readln(f1,a[i]);
               s:=s+' '+a[i]+' ';
            end;
        for i:=1 to n do
            begin
                s1:=' '+a[i]+' ';
                s2:=s;
                delete(s2, pos(s1,s2)+1,length(s1)-1);
                if pos(s1,s2)=0 then
                    begin
                      j:=j+1;
                      b[j]:=a[i];
                    end;
            end;
        writeln(f2,j);
        for i:=1 to j do writeln(f2,b[i]);
        close(f1);
        close(f2);
end.



