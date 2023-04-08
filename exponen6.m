clc
clear all
n=-5:1:5;
for n_counter=1:length(n)
 if n(n_counter)>=1
 R(n_counter)=exp(n(n_counter));
 else
 R(n_counter)=exp(-n(n_counter));
 end
end
stem(n,R)
xlabel ('value of n')
ylabel ('value of R')
title('Exponential Signal')