clc;clear all;close all
a=[1 -1.2 0.4];  b=[1 1];
f=1000; fe=16384;
%a
figure(1)
[h,f]=freqz(b,a,f,fe);%filtre pass bas
plot(f,abs(h))
%b
f0=100; fe=2000; N=100;
n=0:1/fe:99/fe;
f=1:fe/200:fe/2;
y=sin(2*pi*f0*n);
yy=fft(y,100);
figure(2)
plot(n,y)
figure(3)
stem(f,abs(yy))
%c bruit
figure(4)
y2=y+0.4*randn(1,length(y));
plot(n,y2)
figure(5)
yy2=fft(y2,100);
stem(f,abs(yy2))
%d
figure(6)
y2f=filter(b,a,y2);
plot(n,y2f)
figure(7)
yy2f=fft(y2f,100);
stem(f,abs(yy2f))






