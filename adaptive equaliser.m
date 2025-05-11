% Simulation of adaptive equalizer
clc;
clear;
n = 1000;
x = randi([0 1],1,n);
modSig = 2*x - 1;
chan = [0.9 0.2];
rxSig = filter(chan,1,modSig);
rxSig = awgn(rxSig,10,'measured');
eq = adaptfilt.lms(32,0.01);
[d, e] = adaptfilt.lms(32,0.01);
[~,e] = filter(eq,modSig,rxSig);
plot(e);
title('Error Signal');
xlabel('Samples');
ylabel('Amplitude');
