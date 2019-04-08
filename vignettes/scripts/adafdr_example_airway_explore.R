library(reticulate)
use_condaenv('py36')
library(RadaFDR)

data = data_airway()
p = data[0]
x = data[1]

adafdr_explore(p, x, output_folder='test')
