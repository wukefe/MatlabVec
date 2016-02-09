function [pages, noutlinks] = createRandomPageMatrices(n, divisor)
    pages = zeros(n);
    noutlinks = zeros(1,n);

    for i=1:n
        noutlinks(i) = 0;
        for j=1:n
            %if i~=j && mod(abs(commonRandom()), divisor) == 0
            if i~=j && mod(randi(10000), divisor) == 0
                pages(i,j) = 1;
                noutlinks(i) = noutlinks(i) + 1;
            end
        end

        if noutlinks(i) == 0
            % MATLAB does not support do while loops,
            % so we simulate it with a while and condition...
            running = 1;
            while running
                running = 0;
                k = mod(randi(10000), n) + 1;
                %k = mod(abs(commonRandom()), n) + 1;
                if k == i 
                    running = 1;
                end
            end
            pages(i,k) = 1;
            noutlinks(i) = 1;
        end
    end
end
