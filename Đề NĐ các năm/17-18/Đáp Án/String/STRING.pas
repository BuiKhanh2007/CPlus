const
        ip='STRING.INP';
        op='STRING.OUT';
        Nmax=1000000;
var
        f:longint;           //first
        l:longint;           //last
        fi, fo:text;
//======================================
Procedure Inputf;
var
        s:array[0..Nmax] of longint;
        ch:char;
        v:longint;           //value
        n:longint;

begin
        assign(fi, ip); reset(fi);

        fillchar(s, sizeof(s), 0);

        n:=0;f:=0;l:=0;v:=0;

        while not eoln(fi) do
        begin
                n:=n+1;
                read(fi, ch);
                if ch=' ' then s[n]:=0 else s[n]:=s[n-1]+1;
                if s[n]>v then begin v:=s[n]; l:=n; end;
        end;
        close(fi);
        f:=l-v+1;
end;
//======================================
procedure outputf;
var
        i :longint;
        ch:char;
begin
        reset(fi);
        for i:=1 to f-1 do read(fi, ch);

        assign(fo, op); rewrite(fo);
        for i:=f to l do begin read(fi, ch); write(fo, ch); end;
        close(fi);
        close(fo);
end;
//======================================
BEGIN
        inputf;
        outputf;
END.