function [m] = lud_base_vector(m,size)
for i = 1:size
    for j = i:size
        %temp = m(i,j);
        %total= sum(m(i,1:i-1) * m(1:i-1,j));
        %temp = temp - total;
        %m(i,j) = temp;
        m(i,j) = m(i,j) - sum(m(i,1:i-1) * m(1:i-1,j));
    end
    for j = i+1:size
        %temp = m(j,i);
        %total= sum(m(j,1:i-1) * m(1:i-1,i));
        %m(j,i) = (temp - total) / m(i,i);
        m(j,i) = (m(j,i) - sum(m(j,1:i-1) * m(1:i-1,i))) / m(i,i);
    end
end
end