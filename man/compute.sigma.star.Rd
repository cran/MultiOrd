\name{compute.sigma.star}
\alias{compute.sigma.star}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Computes the tetrachoric correlation matrix. If it is non-positive definite, a nearest positive definite matrix is used.
}
\description{
It computes the tetrachoric correlation matrix using the algorithm described in Emrich and Piedmonte
(1991). If the resulting matrix is non-positive definite, a nearest positive definite matrix is
returned and the warning message will be printed.
}
\usage{
compute.sigma.star(prop.vec.bin, corr.mat)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{prop.vec.bin}{
    Vector of binary mariginal probabilities
}
  \item{corr.mat}{
	Correlation matrix for the binary data
}
}
\value{
Tetrachoric correlation matrix
}
\seealso{
\code{\link{phi2poly}} and \code{\link{nearPD}}
}