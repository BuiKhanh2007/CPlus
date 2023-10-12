program chuoiso;
var f,g:text;
    s1,s2,s:ansistring;
    m,n,i,max,k,t:longint;
    a:array[1..15000] of integer;
begin
        assign(f,'chuoiso.inp'); reset(f);
        assign(g,'chuoiso.out'); rewrite(g);
        readln(f,m,n);
        max:=0;
        for i:=1 to n do
        begin
        readln(f,a[i]);
        if a[i]> max then max:=a[i];
        end;
        str(m,s);
        k:=length(s);
        s1:=s;
        while length(s1)<max do
        begin
                t:=0;
                for i:=1 to k do
                t:=t+ ord(s1[length(s1)-i+1]);
                t:=t-k*48;
                str(t,s2);
                s1:=s1+s2;
        end;
        for i:=1 to n do
        writeln(g,s1[a[i]]);
        close(f);
        close(g);
end.
