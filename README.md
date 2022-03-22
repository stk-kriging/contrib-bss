# Bayesian Subset Simulation (BSS)

This repository provides an implementation of the "Bayesian Subset Simulation"
(BSS) algorithm described in the following preprint:

Julien Bect, Ling Li & Emmanuel Vazquez  
_Bayesian Subset Simulation_  
SIAM/ASA Journal on Uncertainty Quantification 5(1):762–786  
[DOI:10.1137/16M1078276](https://doi.org/10.1137/16M1078276) /
[arXiv:1601.02557](http://arxiv.org/abs/1601.02557) /
[HAL:01253706](https://hal.archives-ouvertes.fr/hal-01253706)

It is currently in a very preliminary form.
After some polishing, it will (sooner or later) become
part of the [STK toolbox](https://github.com/stk-kriging/stk).


## Requirements

You need an interpreter of the Matlab/Octave langage, that is, either
Mathworks's [Matlab](http://www.mathworks.com/products/matlab/ "Matlab") or
[GNU Octave](https://www.gnu.org/software/octave/ "GNU Octave").

The result presented in the article were obtained in 2017 using Matlab R2014b
and STK 2.4.0.  Please report any problem with other versions of Matlab or with
Octave.

Since BSS is meant to become part of the STK toolbox, it should ideally run with
Matlab >= R2009b and Octave >= 4.0.0 (those are the current requirements indicated
in STK's README). Right now, it probably doesn't...


## Installation

 1. Clone the BSS repository wherever you like:

        git clone git@github.com:stk-kriging/contrib-bss.git bss

    (or [download](https://github.com/stk-kriging/contrib-bss/archive/refs/heads/main.zip)
    and unpack a zip snapshot of the repo).

 2. [Download](https://github.com/stk-kriging/stk/releases)
    and unpack STK 2.4.0 (or any later version) in `bss/stk`. If you don't
	know which tarball to pick, `stk-*-allpurpose.tar.gz` is the one you're
	looking for.  Alternatively, Octave users can prefer to install stk
	as a regular Octave package (`pkg install -forge stk`), in which case
	`bss_init.m` must be slightly modified.

 3. Start Matlab or Octave and then type

        bss_init

    to initialize BSS (and STK).  That's all, you're ready to use BSS.


## Test

You can test that BSS works as expected by running the test script:

    script_test_bss

The results are summarized at the end in a table that should look like this:

    case #001:  DIM=6  pf_estim=1.05e-05  pf_ref=9.09e-06  ratio=1.15e+00  
    case #002:  DIM=6  pf_estim=1.77e-08  pf_ref=1.56e-08  ratio=1.13e+00  
    case #003:  DIM=2  pf_estim=4.15e-06  pf_ref=3.94e-06  ratio=1.05e+00  
    case #004:  DIM=2  pf_estim=7.19e-09  pf_ref=5.49e-09  ratio=1.31e+00  
    case #005:  DIM=1  pf_estim=8.26e-06  pf_ref=1.00e-05  ratio=8.26e-01  
    case #006:  DIM=1  pf_estim=1.07e-05  pf_ref=1.00e-05  ratio=1.07e+00  
    case #101:  DIM=2  pf_estim=1.37e-04  pf_ref=2.03e-04  ratio=6.73e-01 

The ratios reported in the last column should be reasonably close to one.


## Repository

The current home of BBS is on github:
https://github.com/stk-kriging/contrib-bss

A mirror in also maintained at Sourceforge:
https://sourceforge.net/p/kriging/contrib-bss
(this is the URL that was given in the published paper).

Please use the github project if you want to fork BSS,
report issues, or whatever.


## Licence

Copyright (C) 2016, 2017 CentraleSupelec

This library is free software; you can redistribute it and/or
modify it under the terms of the GNU Lesser General Public
License as published by the Free Software Foundation; either
version 2.1 of the License, or (at your option) any later version.

This library is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public
License along with this library; if not, write to the Free Software
Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA
