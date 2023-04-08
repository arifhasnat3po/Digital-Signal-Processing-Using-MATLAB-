clc
clear all
n=-3:1:10;
for n_counter=1:length(n)
 if n(n_counter)>=1
 R(n_counter)=5
 else
 R(n_counter)=0
 end
end
stem(n,R)
xlabel ('value of n') 