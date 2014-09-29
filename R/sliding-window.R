# average each OTUs relative abundanc across a time variable using a
# sliding window method
phytime_sliding_window <- function(phy, ...) {
  phy %>%
    psmelt() %>%
    select(OTU, Abundance) %>%
    group_by(OTU) %>%
    summarize(median=median(lag(Abundance)))
}

# average each OTUs relative abundance across a time variable by breaking
# samples up into 'n' discrete time points
phytime_aggregate_time <- function(phy, ...) {
}

# average each OTUs relative abundance across a time variable by fitting a
# smoothing spline and predicting relative abundance between samples
phytime_splines <- function(phy, ...) {
}
