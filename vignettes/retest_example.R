library(reticulate)
use_condaenv('py36')
library(RadaFDR)

data = data_airway()
p = data[0]
x = data[1]

res <- adafdr_test(p, x, fast_mode=TRUE)

adafdr_retest(res, alpha=0.05)$n_rej
adafdr_retest(res, alpha=0.1)$n_rej
adafdr_retest(res, alpha=0.15)$n_rej
adafdr_retest(res, alpha=0.2)$n_rej
adafdr_retest(res, alpha=0.5)$n_rej
