# Quantitative Psychology Tools

The following changes have been made since version 1.1 of Quantitative Psychology Tools

Changes to v. 1.2 
1. Changed affiliation from @umsl.edu to @statefarm.com

Changes to v. 1.3 
1. There was a grammar error in help files with examples involving boot() with mediation
	
Changes to v. 1.4
1. Corrected numerous help file errors (syntax issues)
2. Renamed 2 functions to eliminate a conflict with classes. 
3. mean.center is now meanCenter
4. plot.normX (plot.normXm) is now plotNormX (plotNormXm)
5. Changes to plotNormXm, now incorporates a for loop
6. Added 2 new functions: ClassLog and NormalizeX
	
Changes to v. 1.5
1. Functions using sd() needed to be revised to sapply(MAT, sd)
2. Added minor to tweaks to make suitable for R 2.15 upgrade (e.g., 
3. Changed library(PACKAGE) to require(PACKAGE) in examples)
	
	
Changes to v. 1.6
1. Changed affiliation to @gmail.com 
2. Updated call to functions in stats and graphics in NAMESPACE
3. Dropped the use of attach/detach(data) and replaced with functions in purr and dpylr
4. Removed pdf generation from plotnormXm example
5. Re-compiled to work under R 4.2.0
