Radafdr_test <- function(p_input, x_input, K, alpha, n_itr, qt_norm, verbose, output_folder,
                         random_state, single_core, fast_mode, n_full, covariate_type, h)
{
    if (missing(K)) {K=5L}
    if (missing(alpha)) {alpha=0.1}
    if (missing(n_itr)) {n_itr=1500L}
    if (missing(qt_norm)) {qt_norm=TRUE}
    if (missing(verbose)) {verbose=FALSE}
    if (missing(random_state)) {random_state=0L}
    if (missing(single_core)) {single_core=TRUE}
    if (missing(fast_mode)) {fast_mode=TRUE}
    if (missing(n_full)) {n_full=NULL}
    if (missing(covariate_type)) {covariate_type=NULL}
    if (missing(h)) {h=NULL}
    if (missing(output_folder)) {output_folder=NULL}

    md <- import('adafdr.method')
    md$adafdr_test(p, x, fast_mode=fast_mode, K=K, alpha=alpha, n_itr=n_itr, qt_norm=qt_norm, verbose=verbose,
    random_state=random_state, single_core=single_core, fast_mode=fast_mode, n_full=n_full, covariate_type=covariate_type,
    h=h, output_folder=output_folder)
}

data_airway <- function() {
    dl <- import('adafdr.data_loader', convert=FALSE)
    dl$data_airway()
}

data_bottomly <- function() {
    dl <- import('adafdr.data_loader', convert=FALSE)
    dl$data_bottomly()
}

data_pasilla <- function() {
    dl <- import('adafdr.data_loader', convert=FALSE)
    dl$data_pasilla()
}


data_small_gtex <- function() {
    dl <- import('adafdr.data_loader', convert=FALSE)
    dl$data_small_gtex()
}


data_small_gtex_chr21 <- function() {
    dl <- import('adafdr.data_loader', convert=FALSE)
    dl$data_small_gtex_chr21()
}


toy_data_1d <- function() {
    dl <- import('adafdr.data_loader', convert=FALSE)
    dl$toy_data_1d()
}

