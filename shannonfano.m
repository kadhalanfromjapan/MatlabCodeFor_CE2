%SHANNON FANO:

PROGRAM:

function shannon_fano_demo()

symbols = {'A', 'B', 'C', 'D', 'E','F');

probabilities = [0.3, 0.25, 0.2, 0.12, 0.08,0.05);

fprintf('Symbol\tProbability\tShannon-Fano Code\n'); codes = shannon_fano(symbols, probabilities);

for i=1:length(symbols)

fprintf("%s\t%.2f\t\t%s\n', symbols(i), probabilities(i), codes{i});

end

end

function codes = shannon_fano(symbols, probabilities)

[probabilities, order] = sort(probabilities, 'descend");

symbols = symbols(order);

codes = cell(size(symbols));

codes = assign_codes(symbols, probabilities, codes, ");

[~, original_order] = sort(order);

codes = codes(original_order);

end

function codes = assign_codes(symbols, probabilities, codes, prefix)

n=length(symbols);

if n == 1

codes(1) = prefix; % Assign the final prefix

return;

end

split_index = find_best_split(probabilities);

codes(1:split_index) = assign_codes(symbols(1:split_index), probabilities (1:split_index), codes(1:split index), (prefix '0']);

codes(split_index+1:end) = assign_codes(symbols(split_index+1:end), probabilities(split_index+1:end), codes(split_index+1:end), [prefix '1']);

end

function split_index = find_best_split(probabilities)

total = sum(probabilities);

cumulative = curnsum(probabilities);

[~, split_index] = min(abs(cumulative-total/2
