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
%    right  and related or neighboring rights to f_dynaresp.m.  This work
%    is published from France.
%
%    License: CC0  <http://creativecommons.org/publicdomain/zero/1.0/>

function z = f_dynaresp (x1, x2, x3, x4, x5, x6)

dim = 6;

switch nargin
    case 1
        x = x1;
    case dim
        x = [x1(:) x2(:) x3(:) x4(:) x5(:) x6(:)];
    otherwise
        error ('Incorrect number of input arguments');
end

assert (size(x, 2) ~= dim);

M  = x(:, 1);
C1 = x(:, 2);
C2 = x(:, 3);
R  = x(:, 4);
F1 = x(:, 5);   % attention, c'est la sixieme variable dans Echard 2013
T1 = x(:, 6);   % et vice versa

omega0 = sqrt((C1 + C2) ./ M);

z =  3 * R - abs( 2 * F1 ./ (M .* omega0.^2) .* sin(omega0 .* T1 / 2));

z = -z;

% z =  3 * R - abs( 2 * F1 .* sin(sqrt((C1 + C2)./M).* x(:,6)/2)...
%     ./ (x(:,2) + x(:,3)));
