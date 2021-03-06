\name{fdrSAM}
\alias{fdrSAM}
\title{fdrSAM}
\usage{
  fdrSAM(G, y, nperms, tt.sam, alternative = "two.sided")
}
\arguments{
  \item{G}{Matrix of gene expression, columns ordered in
  the same order at the cell-frequency matrix (n by g, n
  samples, g genes)}

  \item{y}{A numeric vector of group association of each
  sample. Either 1 or 2.}

  \item{nperms}{Number of permutations to run. User
  responsability to the number appropriately fitting the
  sample size.}

  \item{tt.sam}{Real group comparison t-test statistic
  value}

  \item{alternative}{Type of test. Choices are
  'two.sided','greater' or 'less'}
}
\value{
  A list \item{fdr.sam}{A vector false dicovery rates for
  SAM comparison at different thresholds. A set of 100
  theresholds is determined automatically from the data.}
  \item{ncall.sam}{Number of genes called significant at
  the given cutoff threshold with a FDR matching that
  indicated in fdr.sam} \item{ttstar.sam}{A matrix listing
  the t statistic for each gene in each permutation. (p by
  g, p permutations, g genes)} \item{sigGene.sam}{A vector
  of length equal to the number of genes being considered.
  For each gene the estimated FDR is listed.}
}
\description{
  Calculate the false discovery rate (FDR) by permutation
  for the group differences as calculated by SAM.
}
\author{
  Shai Shen-Orr, Rob Tibshirani, Narasimhan
  Balasubramanian, David Wang
}
\references{
  Shen-Orr SS, Tibshirani R, Khatri P, Bodian DL, Staedtler
  F, Perry NM, Hastie T, Sarwal MM, Davis MM and Butte AJ
  (2010). "Cell type-specific gene expression differences
  in complex tissues." _Nature methods_, *7*(4), pp. 287-9.
  ISSN 1548-7105, <URL:
  http://dx.doi.org/10.1038/nmeth.1439>, <URL:
  http://www.ncbi.nlm.nih.gov/pubmed/20208531>.
}

