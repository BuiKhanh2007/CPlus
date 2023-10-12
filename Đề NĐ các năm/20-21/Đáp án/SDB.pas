var fi,fo:text;
    kq,a:array[0..100000000] of longint;
    N,i,b,j,dem:longint;
    begin
      assign(fi,'SDB.INP');reset(fi);
      assign(fo,'SDB.OUT');rewrite(fo);
      readln(fi,N);
      fillchar(a,sizeof(a),0);
      j:=0;
      for i:=1 to N do
       begin
         readln(fi,b);a[b]:=a[b]+1;
         if a[b]=1 then begin j:=j+1; kq[j]:=b; end;
       end;

      dem:=0;
      for i:=1 to j do
       begin
         if a[kq[i]]=1 then dem:=dem+1;
       end;
       writeln(fo,dem);
       for i:=1 to j do
       begin
         if a[kq[i]]=1 then writeln(fo,kq[i],' ');
       end;
      close(fi);close(fo);
    end.
