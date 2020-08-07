clc;clear all;close all
n=16;  fe=1600;  wb=400;  wh=600;
wp=[wb,wh]; wp=wp/(fe/2);
Rp=0.2; Rs=100;

figure(1)
[b,a]=butter(n/2,wp,'bandpass');
[h,f]=freqz(b,a,1024,fe);
plot(f,abs(h))

figure(2)
[b,a]=cheby1(n/2,Rp,wp,'bandpass')
[h,f]=freqz(b,a,1024,fe);
plot(f,abs(h))

figure(3)
[b,a]=ellip(n/2,Rp,Rs,wp,'bandpass')
[h,f]=freqz(b,a,1024,fe);
plot(f,abs(h))
%les 3 a la meme amplitude=1 et intervale [400 600 ]
%si on augmente n on plus des ondilation pour ellip et cheby1 et y a pas
%d'ondulation pour butter





