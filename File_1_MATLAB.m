clear,clc,close all
[data,Fs] = audioread("tones2014.wav");

signal = data;
L = length(signal);
T = 1/Fs;
t = [0:L-1] .* T;

t_plot = 5;
msec_per_sec = 1000;
numsamples = t_plot*Fs/msec_per_sec;

figure(1);
plot(msec_per_sec*t(1:numsamples),signal(1:numsamples))
title('plot of input signal')
xlabel('time (milliseconds)')
grid('minor')

%get discrete fourier transform
Y = fft(signal)/L;
f = Fs/2*linspace(0,1,L/2+1);

figure(2);
plot(f,2*abs(Y(1:L/2+1)));
title('single-sided magnitude spectrum')
xlabel('frequency (Hz)')
ylabel('|Y(f)|')
axis([0 Fs/2 0 0.5]);
grid('minor');
