library(reticulate)
use_condaenv('py36')
md <- import('adafdr.method')
dl <- import('adafdr.data_loader', convert=FALSE)

data = dl$data_small_gtex_chr21()
p = data[0]
x = data[1]


res <- md$adafdr_test(p, x)
res$n_rej

res <- md$adafdr_test(p, x, fast_mode=FALSE)
res$n_rej