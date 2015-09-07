function [Cov,Correl]=CovCorrel(x)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
[nrow,ncol]=size(x);
for i=1:ncol
    sum=0;
    for j=1:nrow
        sum=sum+x(j,i);
    end
    mean(i)=sum/nrow;
end
for c=1:ncol
    for r=1:ncol
        Cov(r,c)=((x(:,r)-mean(r))'*(x(:,c)-mean(c)))/nrow;
    end
end
for c=1:ncol
    for r=1:ncol
        Correl(r,c)=Cov(r,c)/(sqrt(Cov(r,r))*sqrt(Cov(c,c)));
    end
end
end

