function [pageRanks,t,maxDiff] = pagerank(iter,thresh,pages,noutlinks,pageRanks,n)
maxDiff   = 99;
dFactor   = 0.85;
maps      = zeros(n); %added size

% t is only used for iteration ( may not need to be vectorized )
for t = 1:iter
    if maxDiff < thresh
        break; 
    end
    % map_page_rank
    outboundRank = pageRanks ./ noutlinks;
    for i = 1:n
        maps(i,:) = pages(i,:) .* outboundRank;
    end
    %for i = 1:n
    %   outbounRank = pageRanks(i)/noutlinks(i);
    %   for k = 1:n
    %       maps(i,k) = pages(i,k) * outbounRank;
    %   end
    %end
    % reduce_page_rank
    dif = zeros(1, n);
    oldRank   = pageRanks;
    newRank   = sum(maps);
    newRank   = ((1-dFactor)./n) + (dFactor.*newRank);
    newDif    = abs(newRank - oldRank);
    %pattern is identied as finding a maximum value in newDif
    %dif       = (newDif > dif) .* newDif + (~(newDif > dif)) .* dif;
    dif       = max(newDif);
    pageRanks = newRank;
    %dif = 0;
    %for j = 1:n
    %    oldRank = pageRanks(j);
    %    newRank = sum(maps(:,j));
    %    newRank = ((1-dFactor)/n)+(dFactor*newRank);
    %    newDif  = abs(newRank - oldRank);
    %    if newDif > dif
    %        dif = newDif;
    %    end
    %    pageRanks(j) = newRank;
    %end
    maxDiff = dif;
end
end
