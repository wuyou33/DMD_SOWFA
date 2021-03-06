function x = hwmodx(X,n)
%HWMODX  Closed-loop Hammerstein-Wiener system identification using the PBSIDopt method.
%  x=hwmodx(X,n) estimates the state sequence x of the identifiable system
%  with order n. The order n can be determined from the singular values
%  given by hwordvarx. The matrix X is also calculated by hwordvarx.
%
%  See also: hwordvarx, hwx2abcdk.m, and hwx2abck.m.
%
%  References:
%    [1] J.W. van Wingerden, and M. Verhaegen, ``Closed-loop subspace
%    identification of Hammerstein-Wiener models'', Joint 48th IEEE
%    Conference on Decision and Control and 28th Chinese Control Conference
%    Shanghai, P.R. China, December 16-18, 2009.

%  Ivo Houtzager
%  Delft Center of Systems and Control
%  Delft University of Technology 
%  The Netherlands, 2010

% check number of arguments
if nargin < 2
    error('HWMODX requires at least two input arguments.');
end

% cheack the dimensions of the inputs
mx = size(X,1);
if (n < 1) || isempty(n)
    error('System order of zero or lower does not make sense!')
end
if mx < n
    error('The number of rows of matrix X must be equal or higher then the order n.')
end

x = X(1:n,:);

% scale the state sequence
%x = diag(1./sqrt(var(x,0,2)))*x;





