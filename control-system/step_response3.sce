clc;
clf;
clear all;
s = poly(0,"s");
num1=s+3;
num2=1;
den2=s+1;
s1=syslin('c',num2,den2);
s2=num1*s1;
s6=.5;
s3=s2/.s6;
s7=1;
s4=s3/.s7;
disp(s4)
t=0:0.001:100;
s8=csim('impulse',t,s4);
plot(t,s8);

xlabel("amplitude")
ylabel("time")
title("response plot by Om")
