%FSK Code for M-ary scheme

clc;

close all;

clear all;

M=2;

fs=32;

nsamp=

8;

freq_sep

=8; snr=-

5:0,5:10;

for i=1:length(snr)

x=randsrc(1,100000,[1,0]);

Y=fskmod(x,M,freq_sep,nsamp,fs);

r=awgn(Y,snr(i),'measured');

z=fskdemod(r,M,freq_sep,nsamp,fs);

[bn,br(i)]=biterr(x,z);

end

semilogy(snr,br,'-r');

xlabel('snr');

ylabel('biterr');

title('FSK');
