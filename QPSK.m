%PSK

dc

close all;

clear all

M-2

snr=-5:0.5:10:

for i=1:length(snr)

x=randsrc(1,100000,[1.0]);

Y=pskmod(x,M);

rawgn(Y,srnr(i).'measured");

z=pskdemod(r.M);

[bn.br(i)]-biterr(x.z);

end

semilogy(snr.br.-)

xlabel('snr);

ylabel('biterr');

tille(PSK);
