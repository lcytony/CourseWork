function y=covariance(x)
%UNTITLED3 Summary of this function goes here
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
        y(r,c)=((x(:,r)-mean(r))'*(x(:,c)-mean(c)))/nrow;
    end
end
end

