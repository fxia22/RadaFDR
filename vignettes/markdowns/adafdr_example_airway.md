The first step is to import libraries.

``` r
library(reticulate)
use_condaenv('py36')
library(RadaFDR)
```

Load the dataset.

``` r
data = data_airway()
p = data[0]
x = data[1]
```

Fast mode adafdr test:

``` r
res <- adafdr_test(p, x, fast_mode=TRUE)
res$n_rej
```

    ## [1] 2984 3037

Full adafdr test (with optimization steps)

``` r
res <- adafdr_test(p, x, fast_mode=FALSE)
res$n_rej
```

    ## [1] 3007 3034
