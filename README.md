# R API of adaFDR
[![GitHub version](https://badge.fury.io/gh/martinjzhang%2Fadafdr.svg)](https://badge.fury.io/gh/martinjzhang%2Fadafdr) [![PyPI version](https://badge.fury.io/py/adafdr.svg)](https://badge.fury.io/py/adafdr)
## Installation

First, install [adafdr](https://github.com/martinjzhang/adafdr) and put it in a virtual environment or anaconda environment(recommended). In the installation script, it assumes you use an anaconda environment called `py36`. You can change it to your virtual environment name in `install.R`.

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

## Functions
The R API contains 4 functions and some data loaders. 

```
adafdr_test: function(p_input, x_input, K, alpha, n_itr, qt_norm, verbose, output_folder,
                         random_state, single_core, fast_mode, n_full, covariate_type, h)
adafdr_retest: function(res_adafdr, alpha, n_full, output_folder)
                        
adafdr_explore: function(p_input, x_input, alpha, output_folder, n_full, covariate_type, h, vis_dim)
```

`adafdr_test` does adaFDR test as described in the paper, `adafdr_retest` retest a set of hypothesis with a different threshold. 
`adafdr_explore` visualize the features and save it to a folder.

Only `p_input`, `x_input` and `res_adafdr` are required inputs, if other input are not supplied, the following default values will be used:
```
K = 5
alpha=0.1
n_itr=1500
qt_norm=TRUE
verbose=FALSE
random_state=0L
single_core=TRUE
fast_mode=TRUE
n_null=NULL
covariate_type=NULL
h=NULL
output_folder=NULL
vis_dim=NULL
```


## Running

For examples see `vignettes/scripts/adafdr_example_airway.R` and `vignettes/scripts/adafdr_example_gtex.R`.
For retest and exploration, see  `vignettes/scripts/adafdr_example_airway_explore.R` and `vignettes/scripts/retest_example.R`.

Some results are shown in `vignettes/markdowns/adafdr_example_airway.md` for users to compare with.