
% Illustration of DFT Computation
clc;
clear all;
close all;
N = input('Type in the length of the sequence = ');
M = input('Type in the length of the DFT = ');
% Generate the length-N time-domain sequence
u = [ones(1,N)];
% Compute its M-point DFT
U = fft(u,M);
% Plot the time-domain sequence and its DFT
t = 0:1:N-1;
subplot(2,2,1)
stem(t,u);
axis([-1 8 0 1.2])
title('Original time-domain sequence')
xlabel('Time index n'); ylabel('Amplitude')
subplot(2,2,3)
k = 0:1:M-1;
stem(k,abs(U))
axis([-1 16 0 10])
title('Magnitude of the DFT samples')
xlabel('Frequency index k'); ylabel('Magnitude')
subplot(2,2,4)
stem(k,angle(U))
axis([-1 16 -2 2])
title('Phase of the DFT samples')
xlabel('Frequency index k'); ylabel('Phase')