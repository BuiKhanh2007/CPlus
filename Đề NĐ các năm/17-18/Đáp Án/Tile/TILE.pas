const
        ip='TILE.INP';
        op='TILE.OUT';
        Nmax=1000;
type
        mang=array[1..Nmax, 1..Nmax] of byte;
var
        c,  a  :mang;
        lc, la :array[1..Nmax] of integer;
        n, k, i:longint;
        fi, fo :text;
//----------------------
procedure AddNumberA(x, y:integer);
var
        j:integer;
begin
        for j:=1 to la[x-y] do
        begin
                a[x, j]:=a[x, j]+a[x-y, j];
                if a[x, j]>9 then
                begin
                        a[x, j+1]:=a[x, j] div 10 + a[x, j+1];
                        a[x, j  ]:=a[x, j] mod 10;
                end;
        end;
        la[x]:=la[x-y];
        while a[x, la[x]+1]>0 do la[x]:=la[x]+1;
end;
//---------------------
function max(a1, a2:integer):integer;
begin
        if a1>a2 then exit(a1) else exit(a2);
end;
//---------------------
procedure AddNumberC(x:integer);
var
        j:integer;
begin
        lc[x]:=max(lc[x-1], la[x]);
        for j:=1 to lc[x] do
        begin
               c[x, j]:=c[x-1, j]+a[x, j]+c[x, j];
               if c[x, j]>9 then
                begin
                        c[x, j+1]:=c[x, j] div 10 + c[x, j+1];
                        c[x, j  ]:=c[x, j] mod 10;
                end;
        end;
        while c[x, lc[x]+1]>0 do lc[x]:=lc[x]+1;
end;
//----------------------
procedure ghi(n:integer);
var
        j:integer;
begin
        for j:=lc[n] downto 1 do write(fo, c[n, j]);
        writeln(fo);
end;
//===============================================
BEGIN
        assign(fi, ip); reset(fi);
        assign(fo, op); rewrite(fo);

        c[1, 1]:=1;  c[2, 1]:=3;
        a[1, 1]:=0;  a[2, 1]:=2;
        lc[1]:=1;   lc[2]:=1;
        la[1]:=1;   la[2]:=1;

        for i:=3 to Nmax do
        begin
                AddNumberA(i, 2); AddNumberA(i, 2); AddNumberA(i, 1);
                AddNumberC(i);
        end;

        while not eof(fi) do
        begin
                readln(fi, n);
                if n<1 then writeln(fo, -1)
                else ghi(n);
        end;

        close(fi);
        close(fo);
END.
