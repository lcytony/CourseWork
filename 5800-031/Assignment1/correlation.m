function y=correlation(x)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
cov=covariance(x);
[nrow,ncol]=size(cov);
for c=1:nrow
    for r=1:nrow
        y(r,c)=cov(r,c)/(sqrt(cov(r,r))*sqrt(cov(c,c)));
    end
end
end

