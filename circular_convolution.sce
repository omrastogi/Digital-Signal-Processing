clc;
clear;
g = input("Enter the input sequence");
h = input("Enter the response response");
N1 = length(g);
N2 = length(h);
N = max(N1,N2);
N3 = N1-N2;
if N3>=0 then
  h = [h,zeros(1,N3)];
else
  g = [g,zeros(1,-N3)];
end;
for n = 1:N
  y(1,n) = 0;
  for i = 1:N
    j = n-i+1;
    if j<=0 then
      j = N+j;
    end;
  end;
  y(n)=[y(n)+g(i)*h(j)];
end;

disp(y)
plot2d3(y);
