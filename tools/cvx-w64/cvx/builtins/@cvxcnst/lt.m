function a = lt( x, y )

%   Disciplined convex programming information for LT (<):
%      The left-hand side of a less-than constraint must be convex. The
%      right-hand side must be concave. Of course, real constant and 
%      affine expressions are both convex and concave and can be used on
%      either side as well.
%   
%   Disciplined geometric programming information for LT (<):
%      The left-hand side of a less-than constraint must be log-convex,
%      including positive constants, monomials, posynomials, generalized
%      posynomials, and products thereof. The right-hand side must be 
%      log-concave---including positive constants, monomials, 
%      reciprocals of log-convex expressions, and products thereof.
%   
%   Note that CVX does not distinguish between strict less-than (<) and
%   less-than-or-equal (<=) constraints; they are treated identically. 
%   Feasible interior-point solvers tend to return points which satisfy
%   strict inequality, but not all solvers do.

evalin( 'caller', 'cvx_verify' );
b = cvx_pushcnstr( x, y, '<' );
if nargout, a = b; end

% Copyright 2005-2014 CVX Research, Inc.
% See the file LICENSE.txt for full copyright information.
% The command 'cvx_where' will show where this file is located.
