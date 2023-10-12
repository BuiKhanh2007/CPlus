n=int(input())
a=list(map(int,input().split()))
smax=0
smin=99999999999
for i in range(n):
   for j in range(0,n):
      if (i==j):
          continue
      smax=max(smax,a[i]+a[j])
   smin = min(smin,smax)

print(smin)
