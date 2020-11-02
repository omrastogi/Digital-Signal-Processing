clc;
g = [1,0,1,0,0,1,1];
len = length(g);
t = 0: %pi/99.9 : 2*%pi;
dpsk = [];
tmln = [];
m = 0;
for n = 1 : 1 : len
    k = ones((1, length(t)));
    k = k*g(n);
    if g(n)==1 then m = ~m; end
    disp(m);
    tmln = cat(2,tmln,k); 
    if g(n) == 1 then m = 2;
    else m = 1; end
    a = sin(m*t);
    dpsk = cat (2,dpsk,a); 
end
