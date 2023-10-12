var f1,f2:text;
    x:string;
    s,y:ansistring;
    i,n,t:longword;
begin
    assign(f1,'SDB.INP');
    assign(f2,'SDB.OUT');
    reset(f1);
    rewrite(f2);
    readln(f1,n);
    for i:=1 to n do
        begin
           readln(f1,x);
           x:=' '+x+' ';
           if pos(x,s)=0 then begin y:=y+x; t:=t+1 end
           else begin if pos(x,y)<>0 then t:=t-1;
                     delete(y,pos(x,y),length(x));
                end;
           if pos(x,s)=0 then s:=s+x;
        end;
    writeln(f2,t);
    delete(y,1,1);
    y:=y+' ';
    while length(y)<>0 do
       begin
          writeln(f2,copy(y,1,pos('  ',y)));
          delete(y,1,pos('  ',y)+1);
       end;
    close(f1);
    close(f2);
end.









