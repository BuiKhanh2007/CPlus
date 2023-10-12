const
        ip='TOMAU.INP';
        op='TOMAU.OUT';
        Nmax=100;
var
        a:array[1..Nmax] of integer;
        n:integer;         //So ki tu
        t:integer;         //So lan lap
        d, v, x:integer;
        fi, fo:text;
//==========================================
procedure Inputf;
var
        ch:char;
begin
        n:=0;
        while not eoln(fi) do
        begin
                n:=n+1;
                read(fi, ch);
                if ch='D' then a[n]:=0;
                if ch='X' then a[n]:=1;
                if ch='V' then a[n]:=2;
        end;

        readln(fi);
end;
//==========================================
function min(a, b:integer):integer;
begin
        if a<b then exit(a) else exit(b);
end;
//-----------------
procedure outputf;
var
        i:integer;
begin
        d:=0; x:=0; v:=0;
        for i:=1 to n do
        begin
                d:=(3-a[i]+0) mod 3 + d;
                x:=(3-a[i]+1) mod 3 + x;
                v:=(3-a[i]+2) mod 3 + v;
        end;
        writeln(fo, min(min(d, v), x));
end;
//==========================================
BEGIN
        assign(fi, ip); reset(fi);
        assign(fo, op); rewrite(fo);
        readln(fi, t);

        while t<>0 do
        begin
                inputf;
                outputf;
                t:=t-1;
        end;

        close(fi);
        close(fo);
END.