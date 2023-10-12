var fi,fo:text;
    a,b:ansistring;
    i:longint;
begin
  assign(fi,'sosanh.inp');reset(fi);
  assign(fo,'sosanh.out');rewrite(fo);
  readln(fi,a);
  while (a[1]=' ') do delete(a,1,1);
  while (a[length(a)]=' ')do delete(a,length(a),1);
  i:=pos(' ',a);
  b:=copy(a,i,length(a)-i+1);
  delete(a,i,length(a)-i+1);
  while (b[1]=' ') do delete(b,1,1);
  if length(a)>length(b) then write(fo,'>')
  else
    if length(a)<length(b) then write(fo,'<')
      else
        begin
          for i:=1 to length(a) do
            begin
              if ord(a[i])>ord(b[i]) then
                begin
                  write(fo,'>');
                  break;
                end
              else
                if ord(a[i])<ord(b[i]) then
                begin
                  write(fo,'<');
                  break;
                end;
            end;
          if (i=length(a))and(a[length(a)]=b[length(a)]) then write(fo,'=');
        end;
  close(fi);
  close(fo);
end.