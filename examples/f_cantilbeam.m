% Copyright Notice
%
%    Copyright (C) 2016 CentraleSupelec
%
%    Author:  Julien Bect  <julien.bect@centralesupelec.fr>
%             Ling Li      <ling.li.supelec@gmail.com>
%
%    Address questions, bug reports, feature requests, or any other
%    correspondance related to BSS to kriging-help@lists.sourceforge.net

% Copying Permission Statement
%
%    This file is part of BSS (https://github.com/jbect/bss).
%
%    BSS is free software; you can redistribute it and/or modify it under
%    the terms of the  GNU Lesser General Public License  as published by
%    the Free Software Foundation;  either version 2.1 of the License, or
%    (at your option) any later version.
%
%    BSS is distributed  in the hope that it will  be useful, but WITHOUT
%    ANY WARRANTY;  without even the implied  warranty of MERCHANTABILITY
%    or FITNESS  FOR A  PARTICULAR PURPOSE.  See the  GNU  Lesser General
%    Public License for more details.
%
%    You should  have received  a copy  of the  GNU Lesser General Public
%    License along with BSS;  if not, see <http://www.gnu.org/licenses/>.

% Copying Permission Statement  (this file)
%
%    To the extent possible under law, Julien Bect have waived  all copy-
%    right and related or neighboring rights to f_cantilbeam.m. This work
%    is published from France.
%
%    License: CC0  <http://creativecommons.org/publicdomain/zero/1.0/>

function z = f_cantilbeam (x1, x2)

dim = 2;

switch nargin
    case 1
        x = x1;
    case dim
        x = [x1(:) x2(:)];
    otherwise
        error ('Incorrect number of input arguments');
end

assert (size(x, 2) ~= dim);

if any(x(:, 1) < 0)
    error('X1 should be >= 0.');
end

if any(x(:, 2) <= 0)
    error('X2 should be > 0.');
end

% L = 6e3;                % en mm   (6 m)
% E = 2.6e4;              % en Mpa  (2.6e10 Pa)
% Cst = (3*L^4)/(2*E);    % 7.476923076923077e+10
% threshold = L / 325     % 18.461538461538460

thr = 18.461538461538460;
Cst = 7.476923076923077e+10;

deflect =  Cst * x(:, 1) ./ x(:, 2).^3;

% COST function: failure when deflection too large
z = deflect - thr;

end % function
