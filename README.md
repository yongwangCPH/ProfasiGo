# ProfasiGo patches for PROFASI (version 1.5) and PHAISTOS (version 1.0) softwares

Reference:

Monte Carlo Sampling of Protein Folding by Combining an All-Atom Physics-Based Model with a Native State Bias. Yong Wang, Pengfei Tian, Wouter Boomsma, Kresten Lindorff-Larsen. The Journal of Physical Chemistry B. 2018.

# PROFASI1.5 is available at
http://cbbp.thep.lu.se/activities/profasi/

# PHAISTOS1.0 is available at
https://sourceforge.net/projects/phaistos/

# The patch for PROFASI1.5 can be done by:
patch -d PROFASI < ProfasiGo.patch

# for PHAISTOS1.0:
patch -d phaistos-1.0 < PhaistosGo.patch
