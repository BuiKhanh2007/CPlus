program Tro_choi;
type mang=array[1..1000] of string;
var A,B:mang;
    tg:string;
    i,n,j,k,t,x:longint;
    fi,fo:text;
function so(var s:string):byte;
  var i,d:integer;
  begin
   d:=0;
   for i:=1 to length(s) do
      if s[i] in ['0'..'9'] then inc(d);
   so:=d;
  end;
procedure qsort(var A:mang; dau,cuoi:longint);
  var i,j,x:longint;
      tam:string;
  Begin
    x:=so(A[(dau+cuoi) div 2]);
    i:=dau; j:=cuoi;
    repeat
      while x>so(A[i]) do inc(i);
      while x<so(A[j]) do dec(j);
      if i<=j then
              begin
               tam:=A[i];
               A[i]:=A[j];
               A[j]:=tam;
               inc(i);
               dec(j);
              end;
    until i>j;
    if dau<j then qsort(A,dau,j);
    if i<cuoi then qsort(A,i,cuoi);
  end;
Begin
  assign(fi,'TROCHOI.INP'); reset(fi);
  assign(fo,'TROCHOI.OUT'); rewrite(fo);
  readln(fi,n);
  for i:=1 to n do begin readln(fi,A[i]); B[i]:=A[i]; end;
  qsort(A,1,n);
  for i:=1 to n do
         if so(A[i])=so(A[i+1]) then
          begin
            for j:=1 to n do
              begin
                if A[i]=B[j] then k:=j;
                if A[i+1]=B[j] then t:=j;
                if (k<>0) and (t<>0) then break;
              end;
            if k>t then
                    begin
                      tg:=A[i];
                      A[i]:=A[i+1];
                      A[i+1]:=tg;
                    end;
          end;
  for i:=1 to n do writeln(fo,A[i]);
  close(fi); close(fo);
End.
