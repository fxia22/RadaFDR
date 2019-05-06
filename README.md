# R API of adaFDR

## Installation

First, install [adafdr](https://github.com/martinjzhang/adafdr) and put it in a virtual environment or conda environment.

Then install the R package for wrapper functions.

Dependency: `reticulate`
```
git clone https://github.com/fxia22/RadaFDR.git
Rscript ./RadaFDR/install.R
```

Or install from github:

```
install.packages("devtools")
library(devtools)
install_github("fxia22/RadaFDR")
```

## Running

For examples see `vignettes/adafdr_example_airway.R` and `vignettes/adafdr_example_gtex.R`.
For retest and exploration, see  `vignettes/adafdr_example_airway_explore.R` and `vignettes/retest_example.R`.

