clc;
g = [1 0 1 1 0 0];
len = length(g)
t = 0: %pi/99.9 : 2*%pi;
x = [];
y = [];
kt = [];
for n = 1 : 2 : len
    m = (2^g(n) + 2^g(n+1) - 1)*%pi/2;
    k = ones((1, length(t)/2)); 
    k1 = k*g(n); k2 = k*g(n+1);
    kt = cat(2,kt,k1,k2);
    a = sin(2*t+m);
    x = cat(2,x,a);
end
t = 0: %pi/99.9 : %pi*(len);
subplot(2,1,1); plot(t,kt,,"LineWidth", 1.5); set(gca(),"grid",[2,2]);
set(gca(),"data_bounds",matrix([0,(%pi*len),-1.5,1.5],2,-1));

subplot(2,1,2); plot(t,x,,"LineWidth", 1.5); set(gca(),"grid",[2,2]);
set(gca(),"data_bounds",matrix([0,(%pi*len),-1.5,1.5],2,-1));
