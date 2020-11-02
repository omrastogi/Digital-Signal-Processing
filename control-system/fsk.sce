clc;
g = [1,0,1,0,0,1,1];
len = length(g);
t = 0: %pi/99.9 : 2*%pi;
fsk = [];
tmln = [];
for n = 1 : 1 : len
    k = ones((1, length(t)));
    k = k*g(n);
    tmln = cat(2,tmln,k); 
    if g(n) == 1 then m = 2;
    else m = 1; end
    a = sin(m*t);
    fsk = cat (2,fsk,a); 
end
t = 0: %pi/99.9 : 2.001*%pi*(len);
disp(length(t));
disp(length(fsk));
//plot(t,fsk);
subplot(2,1,1); plot(t,tmln,,"LineWidth", 1.5); set(gca(),"grid",[2,2]);
set(gca(),"data_bounds",matrix([0,(6*len),-1.5,1.5],2,-1));

subplot(2,1,2); plot(t,fsk,,"LineWidth", 1.5); set(gca(),"grid",[2,2]);
set(gca(),"data_bounds",matrix([0,(6*len),-1.5,1.5],2,-1));
