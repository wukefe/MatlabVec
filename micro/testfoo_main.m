function testfoo_main(n)
% testfoo function
x = zeros(1,n);
t = sqrt(n);
tic;
for i=1:n
    x(i) = testfoo(i,n,t);
end
toc;
end
