var f1,f2:text;
    a:array[1..1000] of string;
    b:array[1..1000] of byte;
    c:array[1..1000] of word;
    i,j,n:word;
    s:byte;k:word;
    x:string;
begin
    assign(f1,'TROCHOI.INP');
    assign(f2,'TROCHOI.OUT');
    reset(f1);
    rewrite(f2);
    readln(f1,n);
    for i:=1 to n do
       begin
           readln(f1,a[i]);
           s:=0;
           for j:=1 to length(a[i]) do
              if (a[i][j]>='0') and (a[i][j]<='9') then s:=s+1;
           b[i]:=s;
           c[i]:=i;
       end;
    for i:=n downto 2 do
        for j:=1 to i-1 do
           if (b[i] < b[j]) or ((b[i]=b[j]) and (c[i]<c[j])) then
           begin x:=a[i];a[i]:=a[j];a[j]:=x;
                 k:=b[i];b[i]:=b[j];b[j]:=k;
                 k:=c[i];c[i]:=c[j];c[j]:=k
           end;
    for i:=1 to n do writeln(f2,a[i]);
    close(f1);
    close(f2);
end.












