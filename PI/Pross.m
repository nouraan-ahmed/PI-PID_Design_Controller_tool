function Pross(G,T,T0,k,ti)
num =[G]
denom =[T 1]

GP =tf(num ,denom)
H =[1]

num2 = [1]
denom2 =[T]

s = tf('s')
k=(T/(G*T0))
TI=T
GC = k*(1+(1/(TI*s)))
Hr = GP*GC
M = feedback(Hr,H)
step(M)
grid on
end