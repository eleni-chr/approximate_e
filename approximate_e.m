function [e,k] = approximate_e(delta)

% The function computes Euler's number, e. Instead of going to infinity,
% the function stops at the smallest k for which the approximation differs
% from exp(1) (i.e., the value returned by MATLAB’s built-in function) by
% no more than the positive scalar, delta, which is the input argument. The
% first output of the function is the approximate value of e, while the
% second is k (see attached image for what k is in the formula).

k=1;
e=1;
for i=1:inf
    p=1./prod(1:i);
    e=e+p;
    if abs(e-exp(1))<=delta
        break
    end
    k=k+1;
end
end