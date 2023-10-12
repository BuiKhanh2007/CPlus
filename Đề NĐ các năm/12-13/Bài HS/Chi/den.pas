var fi,fo:text;
    s,t,i,tn,n,k:longint;
    f:array[0..10]of longint;
begin
  assign(fi,'den.inp');reset(fi);
  assign(fo,'den.out');rewrite(fo);
  while not seekeof(fi) do
    begin
      readln(fi,s,t);
      for i:=0 to 9 do f[i]:=0;
      tn:=0;
      for i:=s to t do
         begin
           n:=i;
           while n<>0 do
             begin
               f[n mod 10]:=f[n mod 10]+1;
               n:=n div 10;
             end;
         end;
      tn:=tn+f[0]*6;
      tn:=tn+f[1]*2;
      tn:=tn+f[2]*5;
      tn:=tn+f[3]*5;
      tn:=tn+f[4]*4;
      tn:=tn+f[5]*5;
      tn:=tn+f[6]*6;
      tn:=tn+f[7]*3;
      tn:=tn+f[8]*7;
      tn:=tn+f[9]*6;
      writeln(fo,tn);
    end;
  close(fi);
  close(fo);
end.
