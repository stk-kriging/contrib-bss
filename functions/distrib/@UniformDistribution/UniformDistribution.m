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

function U = UniformDistribution (a, b)

if nargin == 0
    
    dim = 1;
    a = 0;
    b = 1;
    
else
    
    if ~ (isvector (a))
        error('Incorrect size for argument ''a''.');
    end
    
    dim = length (a);
    
    if ~ ((isvector (b)) && (length (b) == dim))
        error('Incorrect size for argument ''b''.');
    end
    
    a = reshape (a, 1, dim);
    b = reshape (b, 1, dim);
end

support = stk_hrect ([a; b]);

U = struct ('dim', dim, 'a', a, 'b', b, 'support', support);
U = class (U, 'UniformDistribution');

end % function

%#ok<*OOPS>

%!test U = UniformDistribution ();
%!test U = UniformDistribution (1, 3);
%!test U = UniformDistribution ([0 0], [1 2]);
%!error U = UniformDistribution (3, 1);
