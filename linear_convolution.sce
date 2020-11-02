clear;
x = input("Enter input sequence")
h = input ("Enter reponse sequence")
n = length(x);
m = length(h);
mat = zeros(n,m);

for i= 1:n
    for j= 1:m
        mat(i,j)= x(i)*h(j);
    end;
end;

y  = zeros(n+m-1,1)
for sum = 2:n+m
    conv1=0;
    for i=1:n
        for j=1:m
            if sum==i+j
                conv1 = conv1+mat(i,j);
            end;
        end;
    y(sum-1)=conv1
    end;
end;
disp(y);
plot2d3(y);
