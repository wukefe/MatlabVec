function [x] = testfor(i,n,t)
if i < t
    x = sqrt(i-1);
else
    x = tan(i+1);
end
end
