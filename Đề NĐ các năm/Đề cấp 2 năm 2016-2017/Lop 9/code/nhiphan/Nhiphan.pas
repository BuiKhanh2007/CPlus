program nhiphan;
var     a:longint;
        st,st1:string;
        f,g:text;
Begin
        assign(f,'nhiphan.inp'); reset(f);
        assign(g,'nhiphan.out'); rewrite(g);
        readln(f,a);
        st:='';
        st1:='';
        while a>0 do
        begin
                if a mod 2 =0 then
                begin
                        st:='0'+st;
                        st1:=st1+'0';
                end
                else
                begin
                        st:='1' + st;
                        st1:=st1+'1';
                end;
                a:=a div 2;
        end;
        if st=st1 then writeln(g,'CO')
        else writeln(g,'KHONG');
        close(f);
        close(g);
End.



