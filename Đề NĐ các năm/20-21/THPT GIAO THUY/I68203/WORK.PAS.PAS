var f1,f2: text;
    n,i,t: longint;
    kt: byte;
    a,b: array [1..1000000] of byte;
begin
        assign(f1,'WORK.INP');
        assign(f2,'WORK.OUT');
        reset(f1);
        rewrite(f2);
        readln(f1,n);
        for i:=1 to n do read(f1,a[i]);
        for i:=1 to n-1 do read(f1,b[i]);
        i:=0;
        while i<n-1 do
            begin
              i:=i+1;
              if a[i]+a[i+1]<b[i] then
                   begin
                      t:=t+a[i]+a[i+1];
                      i:=i+1;
                   end
                else
                  if (a[i]+a[i+1]-b[i]>a[i+1]+a[i+2]-b[i+1]-a[i]) and (i+2<=n) then
                       begin
                          t:=t+b[i];
                          i:=i+1;
                       end
                      else
                   if i+2<=n then
                      begin
                          t:=t+a[i]+b[i+1];
                          if i+2=n then kt:=1;
                          i:=i+2;
                      end;
            end;
        if kt=0 then t:=t+a[n];
        write(f2,t);
        close(F1);
        close(F2);
end.






