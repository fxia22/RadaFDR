library(reticulate)
use_condaenv('py36')
library(RadaFDR)

data = data_small_gtex_chr21()
p = data[0]
x = data[1]

res <- Radafdr_test(p, x, fast_mode=TRUE)
res$n_rej

res <- Radafdr_test(p, x, fast_mode=FALSE)
res$n_rej