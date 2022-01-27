function yax = logpdf(obj, X)
% computes the (mathematically simplified) log probability density function 
% for a bivariate normal distribution

yax = (-1/2 * (obj.standardize(X)/ 1-obj.Correlation^2)) ...
    *-log(2*pi ...
    *sqrt(obj.Covariance(1,1))*sqrt(obj.Covariance(2,2)) ...
    *sqrt(1-obj.Correlation^2));
end


