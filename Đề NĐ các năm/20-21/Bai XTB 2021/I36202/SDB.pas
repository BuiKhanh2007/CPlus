const fi='SDB.inp';
      fo='SDB.out';
var  n,max,i,j,dem,k:longint;
kt:boolean;
      f,g:text;
 a,c:array[1..1000000] of longint;

BEGIN
  assign(f,fi);
  reset(f);
  assign(g,fo);
  rewrite(g);
  readln(f,n);

  for i:=1 to n do
         readln(f,a[i]);
       k:=0;
  for i:=1 to n do
    begin
       dem:=0;
    for j:=1 to n do
        if a[j]=a[i] then inc(dem);
        if dem=1  then
        begin
          inc(k);
          c[k]:=a[i];
        end;
     end;
     writeln(g,k);
     for i:=1 to k do writeln(g,c[i]);
       close(f); close(g);
END.
