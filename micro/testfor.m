function testfor(n)
% test for-if construct
x = zeros(1,n);
t = sqrt(n);
tic;
for i=1:n
    if i < t
        x(i) = sqrt(i - 1);
    else
        x(i) = tan(i + 1);
    end
end
toc;
end
