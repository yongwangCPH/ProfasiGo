# ProfasiGo patches for PROFASI (version 1.5) and PHAISTOS (version 1.0)

Reference:

Monte Carlo Sampling of Protein Folding by Combining an All-Atom Physics-Based Model with a Native State Bias. Yong Wang, Pengfei Tian, Wouter Boomsma, Kresten Lindorff-Larsen. The Journal of Physical Chemistry B. 2018.

# PROFASI1.5 is available at
http://cbbp.thep.lu.se/activities/profasi/

# PHAISTOS1.0 is available at
https://sourceforge.net/projects/phaistos/

# The patch for PROFASI1.5 can be done by:
cd PROFASI

patch -p1 < ../ProfasiGo.patch

# for PHAISTOS1.0:
cd phaistos-1.0

patch -p1 < ../PhaistosGo.patch

# See examples (alpha3W) in the folder of Examples
