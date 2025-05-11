% simulation and analysis of source coding theorem(huffmann)
clc;
clear;
p = [0.4 0.2 0.2 0.1 0.1]; 
symbols = [1:length(p)];
[dict, avglen] = huffmandict(symbols, p);
code = huffmanenco(symbols, dict);
dcode = huffmandeco(code, dict);
disp('Original symbols:');
disp(symbols);
disp('Huffman Encoded:');
disp(code);
disp('Huffman Decoded:');
disp(dcode);
