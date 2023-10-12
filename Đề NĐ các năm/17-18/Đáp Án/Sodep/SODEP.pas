const
        ip='SODEP.INP';
        op='SODEP.OUT';
var
        a, SoUoc:longint;
        i       :longint;
        fi, fo:text;
begin

        assign(fi, ip); reset(fi);
        assign(fo, op); rewrite(fo);
        While not eof(fi) do
        begin
                readln(fi, a);
                SoUoc:=0;
                for i:=1 to a do if (a mod i)=0 then SoUoc:=SoUoc+1;
                if (a mod SoUoc)=0 then writeln(fo, 'CO') else writeln(fo, 'KHONG');
        end;
        close(fi);
        close(fo);
end.
