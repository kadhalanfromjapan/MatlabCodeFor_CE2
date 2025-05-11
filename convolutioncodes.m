%convolution codes
clc;

clear all;

SNR= [-20:20];

for j=1:1:length(SNR)

msg=randsrc(10000,K,[0 1]);

t=poly2trellis(3,[75]);

con_enc=convenc(msg,t);

n_code=awgn(con_enc, SNR(j), 'measured,244);

q_code=quantiz(n_code, [0.001,0.1,0.3,0.5,0.7.0.9.0.999

tblen=48;delay=tblen;

decod=vitdec(q_code,t, tblen, 'cont', 'soft, 3);

[number,ratio]=biterr(decod(delay+f:end).msg(1:and-delay)

ber(j)=ratio;

end;

semilogy (SNR,ber);

legend('r=1/2");

xlabel('SNR');

ylabel('Bit Error Rate');
