var fa,fd:text;
    i,n,j,d:longint;
    a:array[0..10010] of string;
    b,c:array[0..10010] of longint;

    procedure sort(l,r: longint);
      var
         i,j,x,y: longint;
         y1:string;
      begin
         i:=l;
         j:=r;
         x:=b[(l+r) div 2];
         repeat
           while b[i]<x do
            inc(i);
           while x<b[j] do
            dec(j);
           if not(i>j) then
             begin
                y:=b[i];
                b[i]:=b[j];
                b[j]:=y;
                y:=c[i];c[i]:=c[j];c[j]:=y;
                y1:=a[i];a[i]:=a[j];a[j]:=y1;
                inc(i);
                j:=j-1;
             end;
         until i>j;
         if l<j then
           sort(l,j);
         if i<r then
           sort(i,r);
      end;
      procedure sort2(l,r: longint);
      var
         i,j,x,y: longint;
         y1:string;
      begin
         i:=l;
         j:=r;
         x:=c[(l+r) div 2];
         repeat
           while c[i]<x do
            inc(i);
           while x<c[j] do
            dec(j);
           if not(i>j) then
             begin
                y:=c[i];
                c[i]:=c[j];
                c[j]:=y;
                y1:=a[i];a[i]:=a[j];a[j]:=y1;
                inc(i);
                j:=j-1;
             end;
         until i>j;
         if l<j then
           sort2(l,j);
         if i<r then
           sort2(i,r);
      end;
begin
assign(fa,'trochoi.inp');reset(fa);
assign(fd,'trochoi.out');rewrite(fd);
readln(fa,n);
for i:=1 to n do begin
readln(fa,a[i]); a[i]:=a[i]+' '; c[i]:=i;
for j:=1 to length(a[i]) do
if a[i][j] in ['0'..'9'] then begin inc(b[i]);
                              if not (a[i][j+1] in ['0'..'9']) then break;
                              end;
delete(a[i],length(a[i]),1);
end;
sort(1,n);
i:=1;
while i<n do begin
j:=i;
while (j<n)and(b[j+1]=b[j]) do inc(j);
sort2(i,j);
i:=j+1;
end;
for i:=1 to n do writeln(fd,a[i]);
close(fa);
close(fd);
end.
