function testfoo_main_op(n)
% testfoo function
x = zeros(1,n);
t = sqrt(n);
tic;
x = testfoo_op(1:n,n,t);
toc;
end
