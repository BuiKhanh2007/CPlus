var fa,fb:text;
    n,i,j,t,dem:longint;
    a,b,vt,vt2:array[0..1000009] of longint;
    procedure sort(l,r: longint);
      var
         i,j,x,y: longint;
      begin
         i:=l;
         j:=r;
         x:=a[(l+r) div 2];
         repeat
           while a[i]<x do
            inc(i);
           while x<a[j] do
            dec(j);
           if not(i>j) then
             begin
                y:=a[i];
                a[i]:=a[j];
                a[j]:=y;
                y:=vt[i];
                vt[i]:=vt[j];
                vt[j]:=y;
                inc(i);
                j:=j-1;
             end;
         until i>j;
         if l<j then
           sort(l,j);
         if i<r then
           sort(i,r);
      end;

begin
    assign(fa,'sdb.inp');reset(fa);
    assign(fb,'sdb.out');rewrite(fb);
    readln(Fa,n);t:=maxlongint;
    for i:=1 to n do
     begin
       readln(Fa,a[i]);
       vt[i]:=i;
       b[i]:=a[i];
     end;
    sort(1,n);a[n+1]:=maxlongint;
    for i:=1 to n do
      begin
        if (a[i]<>a[i+1]) and (a[i]<>t) then
          begin
            inc(dem);
            vt2[vt[i]]:=1;
          end
        else t:=a[i];
      end;
    writeln(fb,dem);
    for i:=1 to n do
      if vt2[i]=1 then writeln(fb,b[i]);
close(fa);
close(fb);
end.
