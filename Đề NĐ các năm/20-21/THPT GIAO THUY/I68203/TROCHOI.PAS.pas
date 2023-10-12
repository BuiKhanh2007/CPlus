var f1,f2: text;
    n,i,j: integer;
    k: byte;
    s: string;
    a,b: array [1..10000] of string;
begin
        assign(f1,'TROCHOI.INP');
        assign(f2,'TROCHOI.OUT');
        reset(f1);
        rewrite(f2);
        readln(f1,n);
        for i:=1 to n do
            begin
               readln(f1,a[i]);
               k:=1;
               while (a[i][k]>'9') or (a[i][k]<'0') and (k<length(a[i])) do k:=k+1;
               while  (a[i][k]<='9') and (a[i][k]>='0') and (k<length(a[i])) do
                    begin
                       b[i]:=b[i]+a[i][k];
                       k:=k+1;
                    end;
            end;
               for i:=1 to n-1 do
                  for j:=i+1 to n do
                      if (length(b[i])>length(b[j])) or ( (length(b[i])>length(b[j])) and (b[i]>b[j]))  then
                         begin
                            s:=b[i];
                            b[i]:=b[j];
                            b[j]:=s;
                            s:=a[i];
                            a[i]:=a[j];
                            a[j]:=s;
                         end ;
        for i:=1 to n do writeln(f2,a[i]);
        close(f1);
        close(f2);
end.

