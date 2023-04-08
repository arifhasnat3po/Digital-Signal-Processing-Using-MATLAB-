clc
clear all
n=-5:1:8;
for n_counter=1:length(n)
 if n(n_counter)==1
 R(n_counter)=10
 else
 R(n_counter)=0
 end
end
stem(n,R)
xlabel ('value of n')
ylabel ('value of R')
title('Unit Impulse Signal')