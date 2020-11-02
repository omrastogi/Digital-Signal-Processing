clc;
clear;
x = input('enter signal= ');
N = input('enter the number of point of dft= ');
z = zeros(1,N-length(x));
x = [x,z];
disp ("Input is",);
disp(x);
y = zeros(N);
y = fft(x)
y = round(y); 
y_mag = abs(y);
disp("Magnitude of FFT")
disp (y_mag);
k=0:N-1;
subplot (2,1,1);
plot2d3(k,y_mag);
title("Magnitude Response of DFT (by Om)");
xlabel("Magnitude");
ylabel("Magnitude Response");
y_ang = atan ( imag ( y ) ,real ( y ) )*180/%pi;
disp("Phase of FFT")
disp(y_ang);
subplot(2,1,2);
plot2d3(y_ang);
title("Angualar Response of DFT (by Om)");
xlabel("Angle");
ylabel("Angualar Response");
