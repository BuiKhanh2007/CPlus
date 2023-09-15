from numpy import *
import matplotlib.pyplot as plt

A = float(input("Nhap bien (A): "))
pbd = eval(input("Nhap pha ban dau: "))
tsg = eval(input("Nhap tan so goc:"))
dodai=float(input("Nhap do dai cua t(Truc x): "))
t = linspace(0,dodai,1000)#chay lien tuc
y_cos = A*cos(tsg*t+pbd)
zero = 0*t
plt.figure(figsize=(8, 4))
plt.plot(t,y_cos,label='cos(x)',color='blue')
plt.plot(t,zero,label='Vi tri can bang',color='red')
plt.title('Biểu đồ cos(x)')
plt.xlabel('t')
plt.ylabel('m')
plt.legend()

plt.show()
