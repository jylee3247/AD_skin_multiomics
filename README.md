# *Prevotella pallens*–Associated Xanthurenate Depletion Defines a Region-Specific Microbial–Metabolic Axis in Mild Pediatric Atopic Dermatitis

**Authors:** JY Lee†, HB Kim†, JY Um, BY Chung , CW Park , MJ Kim , J-W Bae , K Kim\*, HO Kim\*.

## Files included in this repository

- `data/microbiome.rda`: Processed **microbiome** `phyloseq` object used in the current study. It includes:
  - **Taxonomic profiles:** SGB-level taxonomic profiles generated from shotgun metagenomic sequencing data using [MetaPhlAn 4](https://huttenhower.sph.harvard.edu/metaphlan/).
  - **Sample metadata:** Sample metadata used for downstream analyses.
  - **Taxonomy information:** Taxonomic classifications of SGBs.
  - **Phylogenetic tree:** Phylogenetic tree of SGBs used for UniFrac distance calculations.

- `data/metabolome.rda`: Processed **metabolome** R object used in the current study. It includes:
  - **Tryptophan metabolite profiles:** Processed metabolite abundance data used for the current study.
  - **Sample metadata:** Sample metadata used for downstream analyses.

- `beta_diversity_analysis/beta_diversity_analysis.R`: R script for the beta-diversity analyses performed on microbiome and metabolome data, including distance calculation, PCoA ordination, and PERMANOVA testing.

- Summary statistics and raw results for differential abundance analysis, network analysis, regression analysis, and other statistical analyses are provided in **the Supplementary Tables of the associated article**.

### Installation for the beta-diversity analysis

```r
# CRAN packages
install.packages(c("vegan", "rbiom", "ggplot2", "dplyr"))

# Bioconductor packages
if (!requireNamespace("BiocManager", quietly = TRUE))
    install.packages("BiocManager")
BiocManager::install("phyloseq")
```

## Citation
If you use this code or data, please cite:
> Prevotella pallens-Associated Xanthurenate Depletion Defines a Region-Specific Microbial-Metabolic Axis in Mild Pediatric Atopic Dermatitis. (2026).

