function testfor_op(n)
% optimized testfor(n)
tic;
t = sqrt(n);
k = 1:n;
x = (k<t).*sqrt(k-1) + (~(k<t)).*tan(k+1);
toc;
end
