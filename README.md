# *Prevotella pallens*–Associated Xanthurenate Depletion Defines a Region-Specific Microbial–Metabolic Axis in Mild Pediatric Atopic Dermatitis
Authors: Lee JY†, Kim HB†, Um JY, Chung BY, Park CW, Kim MJ, Bae J-W, Kim K\*, Kim HO\*.

## Files included in this repository

- `data/microbiome.rda`: Processed **microbiome** R phyloseq object used for the current study. It includes
    - Taxonomic profile: Metaphlan4로 생성한 shotgun metagenome data의 taxonomic profile
    - sample metadata: [설명추가]
    - taxonomy information: SGBs의 taxonomic classification 정보 [설명 알맞게 수정]
    - phylogenetic tree: SGBs phylogenetic tree UniFrac distance 계산에 필요한.
- `data/metabolome.rda`: Processed **metabolome** R phyloseq object used for the current study.
    - Tryptophan metabolite profile: Metaphlan4로 생성한 shotgun metagenome data의 taxonomic profile
    - sample metadata: [설명추가]    
- `beta_diversity_analysis/beta_diversity_analysis.R`: R script for the beta-diversity analyses performed on microbiome and metabolome data, including distance calucation, PCoA ordination, and PERMANOVA testing.
- Differential abundance analysis, network analysis, regression and other statistics models를 사용한 분석에 대한 raw data는 모두 논문의 Supplementary Table 파일에 공개 돼 있으므로 해당 문서를 참조 바랍니다.

### Installation

```r
# CRAN packages
install.packages(c("vegan", "rbiom", "ggplot2", "dplyr")

# Bioconductor packages
if (!requireNamespace("BiocManager", quietly = TRUE))
    install.packages("BiocManager")
BiocManager::install(c("phyloseq"))
```

## Citation
If you use this code or data, please cite:
> Prevotella pallens-Associated Xanthurenate Depletion Defines a Region-Specific Microbial-Metabolic Axis in Mild Pediatric Atopic Dermatitis. (2026).

