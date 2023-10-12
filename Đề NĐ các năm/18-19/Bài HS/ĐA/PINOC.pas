Var   i,n,h,max,j,dau,cuoi,t,k,m:longint;
      a:array[0..1000001]of longint;
      f1,f2:text;
Function kt(h:longint):boolean;
Var s:int64;
    i:longint;
begin
   s:=0;
   For i:=1 to n do If a[i]>h then s:=s+a[i]-h;
   If s>=m then exit(true);
   exit(false);
end;
BEGIN
   Assign(f1,'PINOC.INP');Reset(f1);
   Assign(f2,'PINOC.OUT');Rewrite(f2);
   Read(f1,n,m);
   For i:=1 to n do read(f1,a[i]);
   max:=a[1];
   For i:=1 to n do
   If a[i]>max then max:=a[i];
   dau:=0; cuoi:=max;
   while dau<=cuoi do
      begin
         h:=(dau+cuoi) div 2;
         If kt(h)=true then
            begin
               t:=h;
               dau:=h+1;
            end
         else cuoi:=h-1;
      end;
   Write(f2,t);
Close(f2);
Close(f1);
END.
