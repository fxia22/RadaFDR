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
The R API contains 3 functions and some data loaders. They produce the same results as their python counterparts. 

```
adafdr_test: function(p_input, x_input, K=5, alpha=0.1, n_itr=1500, qt_norm=TRUE, verbose=FALSE,
                      output_folder=NULL, random_state=0L, single_core=TRUE, fast_mode=TRUE,
                      n_full=NULL, covariate_type=NULL, h=NULL)
adafdr_retest: function(res_adafdr, alpha=0.1, n_full=NULL, output_folder=NULL)
                        
adafdr_explore: function(p_input, x_input, alpha=0.1, output_folder=NULL, n_full=NULL,
                         covariate_type=NULL, h=NULL, vis_dim=NULL)
```

`adafdr_test` runs AdaFDR as described in the paper, `adafdr_retest` retest a set of hypothesis with a different threshold. 
`adafdr_explore` visualize the features and save it to a folder.

For input format: 
- `p_input` is (n,) matrix. 
- `x_input` is (n, d) matrix.
- `res_adafdr` is the output of 'adafdr_test'.

<!---
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
--->

## Running
See `vignettes/scripts/adafdr_example_airway.R` for an example. 
<!---
For examples see `vignettes/scripts/adafdr_example_airway.R` and `vignettes/scripts/adafdr_example_gtex.R`.
For retest and exploration, see  `vignettes/scripts/adafdr_example_airway_explore.R` and `vignettes/scripts/retest_example.R`.

Some results are shown in `vignettes/markdowns/adafdr_example_airway.md` for users to compare with.
--->
