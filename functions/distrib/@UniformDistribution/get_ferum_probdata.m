% Copyright Notice
%
%    Copyright (C) 2017 CentraleSupelec
%
%    Author:  Julien Bect  <julien.bect@centralesupelec.fr>
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

function probdata = get_ferum_probdata (distrib)

dim = distrib.dim;

probdata.correlation = eye (dim);

a = distrib.a(:);
b = distrib.b(:);
m = (a + b) / 2;

probdata.marg = [     ...
    6 * ones(dim, 1)  ...  % 6 for uniform distribution
    nan(dim, 2)       ...  % mean, std (unused)
    m                 ...  % starting point
    a b nan(dim, 2)   ...  % a, b, and then two unused parameters (p3, p4)
    ones(dim, 1)];         % inputtype = 1

end % function
