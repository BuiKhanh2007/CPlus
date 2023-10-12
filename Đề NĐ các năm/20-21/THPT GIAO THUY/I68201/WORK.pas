var f1,f2:text;
    a,b:array[1..1000000] of byte;
    i,n:LONGWORD;
    s:longword;
begin
    assign(f1,'WORK.INP');
    assign(f2,'WORK.OUT');
    reset(f1);
    rewrite(f2);
    readln(f1,n);
    for i:=1 to n do read(f1,a[i]);
    for i:=1 to n-1 do read(f1,b[i]);
    i:=1;
    while i<=n-1 do
       begin
            if i=n-1
            then
               if a[i]+a[i+1] > b[i]
               then begin s:=s+b[i];i:=n+1 end
               else begin s:=s+a[i]+a[i+1]; i:=n+1 end;
            if (i<n-1) and (a[i]+a[i+1]-b[i] >= a[i+1]+a[i+2]-b[i+1])
            then
                if a[i]+a[i+1] > b[i]
                then begin s:=s+b[i];i:=i+2 end
                else begin s:=s+a[i];i:=i+1 end
            else
                if a[i+2]+a[i+1] > b[i+1]
                then begin s:=s+a[i]+b[i+1]; i:=i+3 end
                else begin s:=s+a[i]+a[i+1]; i:=i+2 end;
       end;
    if i=n then s:=s+a[i];
    writeln(f2,s);
    close(f1);
    close(f2);
end.

























