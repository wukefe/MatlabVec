function [x] = testfor_op(i,n,t)
x = (i<t).*sqrt(i-1) + (~(i<t)).*tan(i+1);
end
