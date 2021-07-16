% function y = ratiochange(x)
% 
% y = x.*(x<=1)+(1.075-0.075.*x).*x.*(x>1&x<5)+0.7.*x.*(x>=5);

function y = empspeed(x)

y = 7.6 .* x .*(x<0.5) + 5.95 .* sqrt(x) .*(x >= 0.5);
% y = 9.65 - 10.3 * exp(-0.6 .* x);
end