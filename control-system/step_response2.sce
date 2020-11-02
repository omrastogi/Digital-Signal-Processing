clc;
clf;
clear all;
s = poly(0,"s");
num=(1);
den=(s^2+.1*s+1);
s1=syslin('c',num,den);
t=0:0.01:100;
s2=csim('impulse',t,s1);
plot(t,s2);
disp(s1)
xlabel("amplitude")
ylabel("time")
title("impulse response by Om")
