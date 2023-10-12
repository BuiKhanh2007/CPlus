program work;
const maxn=10001;
var a,b,c:array[1..maxn] of longint;
    i,j,n,t:integer;
    f,g:text;
    ds,max1,max2:longint;

procedure Trao(var u,v: longint);
var w: longint;
begin
   w:=u;
   u:=v;
   v:=w;
end;

procedure sortA(k,l: integer);
var r: longint;
    i,j: integer;
begin
        r:=a[(k+l) div 2];
        i:=k;
        j:=l;
        repeat
        while a[i]<r do inc(i);
        while a[j]>r do dec(j);
        if i<=j then
        begin
            trao(a[i],a[j]);
            trao(b[i],b[j]);
            inc(i);
            dec(j);
        end;
        until i>j;
        if k<j then sortA(k,j);
        if i<l then sortA(i,l);
end;

begin
        assign(f,'work.inp'); reset(f);
        assign(g,'work.out'); rewrite(g);
        readln(f,n);
        for i:=1 to n do
        readln(f,a[i],b[i]);
        sortA(1,n);
        c[1]:=b[1]-a[1];
        Ds:=c[1];
        for i:=2 to N do
        begin
                max1:=b[i]-a[i];
                max2:=-maxlongint;
                for j:=i-1 downto 1 do
                begin
                        if (b[j]<=a[i]) and (max1<c[j]+b[i]-a[i]) then
                        max1:=c[j]+b[i]-a[i];
                        if (b[j]>=a[i]) and (b[j]<=b[i]) and (max2<c[j]+b[i]-b[j]-(b[j]-a[i])) then
                        max2:=c[j]+(b[i]-b[j])-(b[j]-a[i]);
                end;
         c[i]:=max1;
         if c[i]<max2 then c[i]:=max2;
         if c[i]>Ds then Ds:=c[i];
         end;
         writeln(g,Ds);
         close(f); close(g);
End.
