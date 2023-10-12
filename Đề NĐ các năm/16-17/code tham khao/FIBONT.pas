 program fibonto;
var
    n:int64;
    i:longint;

    f1,f2:text;
    f:array[1..32000] of int64;
function ktnt(x:int64):boolean;
     var j:longint; ok:boolean;
        begin
         ktnt:=true;
         if x=1 then ktnt:=false
         else
         begin
            for j:=2 to trunc(sqrt(x)) do

                if (x mod j=0) then
                   begin
                      ktnt:=false;
                      break;
                   end;


         end;
         end;
begin
  assign(f1,'fibont.inp');
  reset(f1);
  assign(f2,'fibont.out');
  rewrite(f2);
  readln(f1,n);
         f[1]:=1;
         f[2]:=1;

  for i:=3 to n do
  begin
       f[i]:=f[i-1]+f[i-2];
                if ktnt(f[i]) and (f[i]<=n) then
                writeln(f2,f[i]);
                if f[i]>n then break;
  end;

  close(f1);
  close(f2);
  end.
