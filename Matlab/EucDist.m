AesData = rand(3,20);
DisResult = zeros(19,1);
for i=2:20
    DisResult(i-1) = pdist([AesData(1);AesData(i)]);
end
[MinValue, MinType] = min(DisResult);