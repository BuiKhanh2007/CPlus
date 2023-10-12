var fa,fb:text;
    n,i,j,dem:longint;
    s:string;
    x:char;
    b:array[-1..10005] of longint;
    a:array[-1..300,-1..10005] of string;
begin
    assign(fa,'trochoi.inp');reset(fa);
    assign(fb,'trochoi.out');rewrite(fb);
    readln(Fa,n);
    for i:=1 to n do
      begin
        s:='';dem:=0;
        while not eoln(Fa) do
          begin
             read(fa,x);
             if x in ['0'..'9'] then inc(dem);
             s:=s+x;
          end;
        readln(fa);
        inc(b[dem]);
        a[dem,b[dem]]:=s;
      end;
    for i:=0 to 256 do
         for j:=1 to b[i] do
           writeln(fb,a[i,j]);
close(fa);
close(fb);
end.
