# phyloseq-time

Functions for analyzing microbiome data across a time/age.

## Functions

### Plotting Functions

```R
phy %>%
  tax_glom(taxrank = 'Phylum') %>%
  top_n_taxa(10) %>%
  phytime_sliding_window(width=30) %>%
  ggplot(aes(x=window,
            y=Abundance,
            color='Phylum')) +
    geom_line()
```


### Statistical Functions

- GLM
- Removal of autocorrelation
- OTU/OTU correlation across a time variable
