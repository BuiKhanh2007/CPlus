const fi='TROCHOI.inp';
      fo='TROCHOI.out';
var  a:array[1..10000] of string;
     b:array[1..10000] of integer;
     n:integer;
     function dem(s:string):integer;
var i:integer;
begin
dem:=0;
  for i:=1 to length(s) do if s[i] in ['0'..'9'] then inc(dem);

end;
procedure nhap;
var f:text;
    i:integer;
begin
  assign(f,fi);
  reset(f);
  readln(f,n);
  for i:=1 to n do
    begin
     readln(f,a[i]);
     b[i]:=dem(a[i]);
     end;
   close(f);
end;


 procedure sort(l,r: longint);
 var
    i,j,x,tam: integer;
    y:string;
    begin
         i:=l;
         j:=r;
         x:=b[(l+r) div 2];
         repeat
           while x>b[i] do
            inc(i);
           while x<b[j] do
            dec(j);
           if not(i>j) then
             begin
                y:=a[i];     tam:=b[i];
                a[i]:=a[j];  b[i]:=b[j];
                a[j]:=y;      b[j]:=tam;
                inc(i);
                j:=j-1;
             end;
         until i>j;
         if l<j then
           sort(l,j);
         if i<r then
           sort(i,r);
      end;
procedure xuli;
var f:text;
    i,j:integer;
begin
  assign(f,fo);
  rewrite(f);
c:=b;
sort(1,n);

for i:=1 to n do
   writeln(F,a[i]);
   close(f);

end;
begin
  nhap;
  xuli;
end.





