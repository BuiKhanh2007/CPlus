var i,n,j:longint;
    a,b:array[1..1000000] of longint;
    t,t1,min:longint;
    fi,fo:text;
begin
 assign(fi,'work.inp');
 assign(fo,'work.out');
 reset(fi);
 rewrite(fo);
 readln(fi,n);
 for i:=1 to n do read(fi,a[i]);
 readln(fi); min:=maxlongint;
 for i:=1 to n-1 do read(fi,b[i]);
 if n mod 2=0 then
  begin
   if n div 2<=2 then
     if n div 2=1 then write(fo,b[1])
     else if a[1]+b[2]+a[n]<b[1]+b[3] then min:=a[1]+a[n]+b[2]
          else min:=b[1]+b[3]
   else
    begin
     while j<n do
          begin
           inc(j); t:=0;
           for i:=1 to n do
            if i mod 2=1 then if i<>j then t:=t+b[i];
           if b[i]<min then min:=b[i];
           inc(j);
          end;
     t:=0;
     for i:=1 to n do if i mod 2=0 then t:=t+b[i];
     t:=t+a[1]+a[n];
     if t<min then min:=t;
    end;
  end
 else
  begin
   t:=a[1]; t1:=a[n];
   for i:=1 to n do
    if i mod 2=0 then t:=t+b[i]
    else t1:=t1+b[i];
   if t<min then min:=t;
   if t1<min then min:=t1;
  end;
 write(fo,min);
 close(fi);
 close(fo);
end.
