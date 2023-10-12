 var  ch:char;
      st,s:ansistring;
      max,so,i,d,ma:longint;
      f,g:text;

function kt(k:longint):boolean;

begin
kt:=true;
if k<2 then kt:=false;
for i:=2 to trunc(sqrt(k)) do
     if k mod i=0 then
        begin
                kt:=false;
                break;
       end;

end;
begin
assign(f,'MATKHAU.INP'); reset(f);
Assign(g,'MATKHAU.OUT');Rewrite(g);
st:='';
max:=1;
  while not eof(f) do
  begin

        read(f,ch);
        if (ch in ['0'..'9'])  then
           st:=st+ch;
        if ch  in ['A'..'z'] then
                                  begin
                                     val(st,so,ma);
                                     if kt(so) and (so>max) then
                                        max:=so;
                                     st:='';
                                   end;

  end;

 if (st<>'') then
           begin
                 val(st,so,ma);
                 if kt(so) and (so>max) then max:=so;
                 st:='';
           end;

           write(g,max);
close(f);close(g);
end.
