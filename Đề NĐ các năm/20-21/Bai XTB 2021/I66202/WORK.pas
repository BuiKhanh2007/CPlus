var fi,fo:text;
    t,p:array[0..1000000]of longint;
    i,n,min,tn,vt:longint;
    f:array[0..1000000]of boolean;
begin
  assign(fi,'WORK.inp');reset(fi);
  assign(fo,'WORK.out');rewrite(fo);
  readln(fi,n);
  for i:=1 to n do read(fi,t[i]);
  for i:=1 to n-1 do read(fi,p[i]);
  for i:=1 to n do f[i]:=true;
  min:=100;
  while min<101 do
    begin
      min:=101;
      for i:=1 to n-1 do
        if p[i]<min then
          begin
            min:=p[i];
            vt:=i;
          end;
      if (min<>101)and(f[vt]=true)and(f[vt+1]=true)then
        begin
          tn:=tn+min;
          f[vt]:=false;
          f[vt+1]:=false;
        end;
      p[vt]:=101;
    end;
  for i:=1 to n do
  if f[i]=true then tn:=tn+t[i];
  writeln(fo,tn);
  close(fi);
  close(fo);
end.