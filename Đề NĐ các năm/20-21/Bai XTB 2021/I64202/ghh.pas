   var a:array[1..10000] of longint;
   b:array[1..1000000]of boolean;
   n,i,j:longint;
   fi,fo:text;
   function ghh(x:longint):boolean;
   var i,k,t:longint;
      begin
      t:=0;
      k:=trunc(sqrt(x));
      for i:=1 to k do if x mod i=0 then t:=t+i+x div i;
      if sqr(k)=x then t:=t-k;
      if 2*x<= t then ghh:=true
      else ghh:=false;
      end;
   begin
   assign(fi,'ghh.inp');
   assign(fo,'ghh.out');
   reset(fi);
   rewrite(fo);
   read(fi,n);
   for i:=1 to n do
    begin
     readln(fi,a[i]);
     b[a[i]]:=false;
    end;
   j:=0;
   for i:=1 to n do if ghh(a[i])=true then
         begin
                 inc(j);
                 b[a[i]]:=true;
         end;
   writeln(fo,j);
   for i:=1 to n do if b[a[i]]=true then writeln(fo,a[i]);
   close(fi);
   close(fo);
   end.
