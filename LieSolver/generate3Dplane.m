% Copyright (C) 2016 Marc Haubenstock
% 
% This program is free software; you can redistribute it and/or modify it
% under the terms of the GNU General Public License as published by
% the Free Software Foundation; either version 3 of the License, or
% (at your option) any later version.
%
% This program is distributed in the hope that it will be useful,
% but WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
% GNU General Public License for more details.
% 
% You should have received a copy of the GNU General Public License
% along with this program.  If not, see <http://www.gnu.org/licenses/>.

% -*- texinfo -*- 
% @deftypefn {Function File} {@var{retval} =} generate3Dplane (@var{input1}, @var{input2})
%
% @seealso{}
% @end deftypefn

% Author: Marc Haubenstock <marchaubenstock@Me.local>
% Created: 2016-11-15

function [x_i,y_i,z_i,x_i_prime,y_i_prime,z_i_prime,XX,YY] = generate3Dplane (A,B,D,N,Sigma)

C = -1; % fixed from assignment

n = [A,B,C];
n_hat = n/norm(n); 
a = n_hat(1);
b = n_hat(2);
c = n_hat(3);

x_i = normrnd(0,16,[1 N]);
y_i = normrnd(0,16,[1 N]);
z_i = arrayfun(@(x,y) A*x+B*y+D,x_i,y_i);

[ XX, YY ] = meshgrid(x_i,y_i);
ZZ = arrayfun(@(X,Y) A*X+B*Y+D,XX,YY);

deltas = normrnd(0,Sigma,[1,N]);

x_i_prime = x_i + deltas*a;
y_i_prime = y_i + deltas*b;
z_i_prime = z_i + deltas*c;


end
