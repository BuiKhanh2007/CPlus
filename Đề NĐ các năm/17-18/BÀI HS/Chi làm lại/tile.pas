var fi,fo:text;
    n,d:longint;
    s:ansistring;
    a,b:array[0..1000]of ansistring;
function nhan(s:ansistring):ansistring;
var nho,i,t:longint;
  begin
    nho:=0;
    for i:=length(s) downto 1 do
      begin
        t:=(ord(s[i])-48)*2+nho;
        s[i]:=chr(t mod 10+48);
        nho:=t div 10;
      end;
    if nho>0 then s:='1'+s;
    exit(s);
  end;
procedure tru;
var i,t,nho:longint;
    s,x:ansistring;
  begin
    while length(a[d-1])< length(b[d]) do a[d-1]:='0'+a[d-1];
    nho:=0;
    s:=b[d];
    x:=a[d-1];
    for i:=length(s) downto 1 do
      begin
        t:=ord(s[i])-48-ord(x[i])+48-nho;
        if t<0 then
          begin
            t:=t+10;
            nho:=1;
          end
        else nho:=0;
        a[d]:=chr(t+48)+a[d];
      end;
  end;
begin
  assign(fi,'tile.inp');reset(fi);
  assign(fo,'tile.out');rewrite(fo);
  d:=1;
  a[d]:='1';
  b[d]:='2';
  while not seekeof (fi) do
    begin
      readln(fi,n);
      while d<n do
        begin
          d:=d+1;
          b[d]:=nhan(b[d-1]);
          tru;
         end;
      s:=a[n];
      while s[1]='0' do delete(s,1,1);
      writeln(fo,s);
    end;
  close(fi);
  close(fo);
end.



