clc;
s = poly(0,'s');
num = (s^2+2*s+4);
den = (s^2+4*s+10);
s1 = syslin('c',num,den);
disp(s1);
t = 0:0.01:50;
s2 = csim('step',t,s1);
plot(t,s2);

