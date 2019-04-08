library(reticulate)
use_condaenv('py36')
library(RadaFDR)

data = data_airway()
p = data[0]
x = data[1]

res <- adafdr_test(p, x, fast_mode=TRUE)
res$n_rej

res <- adafdr_test(p, x, fast_mode=FALSE)
res$n_rej