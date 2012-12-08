\name{validation.CorrMat}
\alias{validation.CorrMat}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Validates input correlation matrix
}
\description{
Checks symmetry, positive definiteness, conformity and range of the correlation matrix.
}
\usage{
validation.CorrMat(prop.vec.bin, CorrMat)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{prop.vec.bin}{
Vector of binary (converted from ordinal) marginal probabilities
}
  \item{CorrMat}{
Correlation matrix to be validated
}
}
\details{
This function checks the correlation matrix for basic properties of correlation matrix, such as symmetry and positive definiteness. In addition it verifies that all the correlations are in valid range for the calculated binary marginal probabilities. Range violation error message indicates that ordinal data with the specified correlations cannot be generated due to distributional constraints.
}

\seealso{
\code{\link{find.binary.prob}}
}

