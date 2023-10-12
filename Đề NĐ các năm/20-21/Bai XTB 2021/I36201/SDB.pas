program sodacbiet;
var i,N,x,d,j:longint;
    s,st,ch,s1:string;
    A:array[1..1000000] of longint;
    B:array[1..1000000] of ansistring;
    fi,fo:text;
BEGIN
     assign(fi,'SDB.inp'); reset(fi);
     assign(fo,'SDB.out'); rewrite(fo);
     readln(fi,N);
     d:=0; j:=1;
     for i:=1 to 1000000 do A[i]:=0;
     for i:=1 to N do
     begin
         readln(fi,x);
         str(x,ch);
         B[j]:=' '+ch+' ';
         inc(j);
         inc(A[x]);
     end;
    for i:=1 to 1000000 do if A[i]=1 then
    begin
    str(i,ch);
    s1:=s1+' '+ch+' ';
    inc(j);
    inc(d);
    end;
    writeln(fo,' ',d);
     for i:=1 to N do
      if pos(B[i],s1)<>0 then writeln(fo,B[i]);
    close(fI); close(fo);
END.
