% Illustration of IDFT Computation
clc;
clear all;
close all;

K = input('Type in the length of the DFT = ');
N = input('Type in the length of the IDFT = ');
% Generate the length-K DFT sequence
k = 1:K;
U = (k-1)/K;
% Compute its N-point IDFT
u = ifft(U,N);
% Plot the DFT and its IDFT
k=1:K;
subplot(2,2,1)
stem(k-1,U)
xlabel('Frequency index k'); ylabel('Amplitude')
title('Original DFT samples')
subplot(2,2,3)
n = 0:1:N-1;
stem(n,real(u))
title('Real part of the time-domain samples')
xlabel('Time index n'); ylabel('Amplitude')
subplot(2,2,4)
stem(n,imag(u))
title('Imaginary part of the time-domain samples')
xlabel('Time index n'); ylabel('Amplitude')