program robot;
Var a:array[1..100,1..100] of integer;
    t:array[1..100,1..100] of longint;
    n,m,i,j:integer;
    f,g:text;


Procedure InitT;
Begin
        t[1,1]:=a[1,1];
        for i:=2 to n do  {tinh cho dong o bien}
        Begin
                t[i,1]:=t[i-1,1]+a[i,1];
                t[1,i]:=t[1,i-1]+a[1,i];
        End;
        for i:=2 to n do {Tinh ben trong}
        for j:=2 to n do
        if t[i,j-1] < t[i-1,j] then t[i,j]:=t[i,j-1]+a[i,j]
                else t[i,j]:=t[i-1,j]+a[i,j];
End;

Begin
        assign(f,'robot.inp'); reset(f);
        assign(g,'robot.out'); rewrite(g);
        readln(f,n);
        For i:=1 to n do
        Begin
                For j:=1 to n do
                read(f,a[i,j]);
                readln(f);
        End;
        fillchar(t,sizeof(t),0);
        InitT;
        writeln(g,T[n,n]);
        close(f);
        close(g);
End.
