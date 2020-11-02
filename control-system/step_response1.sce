clc;
s = poly(0,'s');

num1 = 2; den1 = s+3;
s1 = syslin('c',num1,den1);

num2 = 4; den2 = s^2+2*s+4;
s2 = syslin('c',num2,den2);

num3 = 1; den3 = s; 
s3 = syslin('c',num3,den3);

s4 = s2+s3;

s5 = s1*s4;

disp(s5);
t = 0 : 0.01 : 10;
plot(t,s5);
