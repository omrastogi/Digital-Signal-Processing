clc;
clear;
N = 64;
n = 1:N;
w = 0.54 - 0.46 * cos((2*%pi*n)/(N-1));
subplot(2,1,1);
title ('Time domain of Hamming Window Output');
xlabel ('samples');
ylabel ('Amplitude');
plot (n,w);
W = fft(w);
W = 20* log(abs(W))
subplot(2,1,2);
title ('Frequency domain of Hamming Window Output');
xlabel ('samples');
ylabel ('Amplitude');
plot (W);
