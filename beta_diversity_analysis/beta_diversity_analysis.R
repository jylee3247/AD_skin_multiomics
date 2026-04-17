# =============================================================================
# 01. Beta Diversity Analysis (PCoA + PERMANOVA) related to Figure 1 and 4 ====
# =============================================================================

library(phyloseq)
library(vegan)
library(rbiom)
library(ggplot2)
library(tidyverse)

# Microbiome ---------------------------------------------------------------

# Load the phyloseq object

# load("microbiome.rda")

## --- Compute distance matrices -----------------------------------------------

asv_tab <- t(as.data.frame(otu_table(ps)))

dist_uu <- rbiom::unifrac(t(asv_tab), weighted = FALSE, tree = phy_tree(ps))
dist_wu <- rbiom::unifrac(t(asv_tab), weighted = TRUE, tree = phy_tree(ps))

## --- PCoA ordination ---------------------------------------------------------

pcoa_uu <- cmdscale(dist_uu, k = 10, eig = TRUE)
pcoa_wu <- cmdscale(dist_wu, k = 10, eig = TRUE)


# Then, we plotted PCoA using ggplot2


## --- PERMANOVA (Figure 1C) --------------------------------------------------

beta_md <- data.frame(sample_data(ps))

# Univariable analysis based on Unweighted UniFrac distance

permanova_res <- adonis2(dist_uu ~ Age, data = beta_md, permutations = 999, by = "terms", na.action = na.omit)
print(permanova_res)

permanova_res <- adonis2(dist_uu ~ Sex, data = beta_md, permutations = 999, by = "terms", na.action = na.omit)
print(permanova_res)

permanova_res <- adonis2(dist_uu ~ Subject_id, data = beta_md, permutations = 999, by = "terms", na.action = na.omit)
print(permanova_res)

permanova_res <- adonis2(dist_uu ~ Group, data = beta_md, permutations = 999, by = "terms", na.action = na.omit)
print(permanova_res)

permanova_res <- adonis2(dist_uu ~ Region, data = beta_md, permutations = 999, by = "terms", na.action = na.omit)
print(permanova_res)

# Multivariables analysis based on Unweighted UniFrac distance
permanova_res <- adonis2(dist_uu ~ Age + Sex + Subject_id + Group, data = beta_md, permutations = 999, by = "terms", na.action = na.omit)
print(permanova_res)

permanova_res <- adonis2(dist_uu ~ Age + Sex + Subject_id + Region, data = beta_md, permutations = 999, by = "terms", na.action = na.omit)
print(permanova_res)

# Univariable analysis based on Weighted UniFrac distance

permanova_res <- adonis2(dist_wu ~ Age, data = beta_md, permutations = 999, by = "terms", na.action = na.omit)
print(permanova_res)

permanova_res <- adonis2(dist_wu ~ Sex, data = beta_md, permutations = 999, by = "terms", na.action = na.omit)
print(permanova_res)

permanova_res <- adonis2(dist_wu ~ Subject_id, data = beta_md, permutations = 999, by = "terms", na.action = na.omit)
print(permanova_res)

permanova_res <- adonis2(dist_wu ~ Group, data = beta_md, permutations = 999, by = "terms", na.action = na.omit)
print(permanova_res)

permanova_res <- adonis2(dist_wu ~ Region, data = beta_md, permutations = 999, by = "terms", na.action = na.omit)
print(permanova_res)

# Multivariables analysis based on Weighted UniFrac distance
permanova_res <- adonis2(dist_wu ~ Age + Sex + Subject_id + Group, data = beta_md, permutations = 999, by = "terms", na.action = na.omit)
print(permanova_res)

permanova_res <- adonis2(dist_wu ~ Age + Sex + Subject_id + Region, data = beta_md, permutations = 999, by = "terms", na.action = na.omit)
print(permanova_res)


# Metabolome ---------------------------------------------------------------

# Load the phyloseq object.

# load("metabolome.rda")

## --- Compute distance matrices -----------------------------------------------

mtb_tab <- t(as.data.frame(otu_table(ps)))

dist <- vegdist(mtb_tab, method = "bray")

## --- PCoA ordination ---------------------------------------------------------

pcoa <- cmdscale(dist_uu, k = 10, eig = TRUE)


# Then, we plotted PCoA using ggplot2


## --- PERMANOVA (Figure 4A) --------------------------------------------------

beta_md <- data.frame(sample_data(ps))

# Univariable analysis based on Bray-Curtis dissimilarity matrix

permanova_res <- adonis2(dist ~ Age, data = beta_md, permutations = 999, by = "terms", na.action = na.omit, sqrt.dist = TRUE)
print(permanova_res)

permanova_res <- adonis2(dist ~ Sex, data = beta_md, permutations = 999, by = "terms", na.action = na.omit, sqrt.dist = TRUE)
print(permanova_res)

permanova_res <- adonis2(dist ~ Subject_id, data = beta_md, permutations = 999, by = "terms", na.action = na.omit, sqrt.dist = TRUE)
print(permanova_res)

permanova_res <- adonis2(dist ~ Group, data = beta_md, permutations = 999, by = "terms", na.action = na.omit, sqrt.dist = TRUE)
print(permanova_res)

permanova_res <- adonis2(dist ~ Region, data = beta_md, permutations = 999, by = "terms", na.action = na.omit, sqrt.dist = TRUE)
print(permanova_res)

# Multivariables analysis based on Bray-Curtis dissimilarity matrix
permanova_res <- adonis2(dist ~ Age + Sex + Subject_id + Group, data = beta_md, permutations = 999, by = "terms", na.action = na.omit, sqrt.dist = TRUE)
print(permanova_res)

permanova_res <- adonis2(dist ~ Age + Sex + Subject_id + Region, data = beta_md, permutations = 999, by = "terms", na.action = na.omit, sqrt.dist = TRUE)
print(permanova_res)