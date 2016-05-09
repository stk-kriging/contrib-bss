% Copyright Notice
%
%    Copyright (C) 2016 CentraleSupelec
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

function distrib = BetaDistribution (alpha, beta)

if nargin == 0
    
    dim = 1;
    alpha = 0;
    beta = 1;
    
else
    
    if ~ isvector (alpha)
        error('Incorrect size for argument alpha.');
    end
    
    % Dimension of random vector
    dim = length (alpha);
    
    if ~ (isvector (beta) && isequal (length (beta), dim))
        error('Incorrect size for argument beta.');
    end
end

distrib = struct ('dim', dim, 'alpha', alpha, 'beta', beta);

distrib = class (distrib, 'BetaDistribution');

end % function
