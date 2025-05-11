dc,

clear all;

SNR=[-20:1:20]

k=4;

n=7;

for j=1:1:length(SNR)

msg=randsrc(10000,k, [0 1]);

enc_sig=encode(msg,n,k, hamming/binary);

msg_tx=pskmod(enc_sig,2);

msg_rx=awgn(msg_tx,SNR(j));

msg_demod=pskdemod(msg_rx,2);

dec_sig=decode(msg_demod,n,k,'hamming/binary);

[errorbit,ratiobit]=biterr(msg,dec_sig);

ber(j)=ratiobit;

end;

semilogy(SNR,ber);

xlabel('SNR');

ylabel('BER analysis of Hamming Code");
