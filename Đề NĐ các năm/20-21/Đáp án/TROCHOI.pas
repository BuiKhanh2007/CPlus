var s: array[0..20000] of ansistring;
    i,n:longint;
    f,g:text;
{===================}
function    dem_so(x:ansistring):longint;
begin
  dem_So:=0;
  for i:=1 to length(x) do
   if x[i] in ['0'..'9'] then inc(dem_so);
end;
{===================}
procedure qsort(L,H: word);
var tg,k:ansistring; i,j:longint;
begin
if l>=h then exit;
i:=l; j:=h; tg:=s[(l+h) div 2];
repeat
while dem_so(s[i])<dem_so(tg) do inc(i);
while dem_so(s[j])>dem_so(tg) do dec(j);
if i<=j then
 begin
  if i<j then begin k:=s[i];s[i]:=s[j];s[j]:=k;end;
  inc(i);dec(j);
 end;
until i>j;
Qsort(l,j);Qsort(i,h);
end;
{=================}
begin
    assign(f,'trochoi.inp'); reset(f);
    assign(g,'trochoi.out'); rewrite(g);
    readln(f,n);
    for i:=1 to n do readln(f,s[i]);
    qsort(1,n);
    for i:=1 to n do writeln(g,s[i]);
    close(f); close(g);
end.
