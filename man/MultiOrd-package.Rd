\name{MultiOrd-package}
\alias{MultiOrd-package}
\alias{MultiOrd}
\docType{package}
\title{
Generation of multivariate ordinal data.
}
\description{
A package for multivariate ordinal data generation given marginal distributions and 
correlation based on the methodology proposed by Demirtas (2006).
}
\details{
\tabular{ll}{
Package: \tab MultiOrd\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2012-05-17\cr
License: \tab GPL-2
}
This package can be used to generate multivariate ordinal data. Two main input required are matrix of marginal probabilities of each variable and the correlation matrix of the ordinal variables. Due to the limitation on the magnitude of the binary correlation which depends on the marginal probabilites, ordinal correlation matrix is not free to vary betwwen -1 and 1.  

The main function in this package is \code{\link{genOrd}} which generates the multivariate ordinal data. Another important function is \code{\link{simBinCorr}} which calculates the intermidiate binary correlation.
}
\author{
Anup Amatya and Hakan Demirtas

Maintainer: Anup Amatya <aamatya@nmsu.edu>

}
\references{
Demirtas, H. (2006). A method for multivariate ordinal data generation given marginal distributions and correlations. Journal of Statistical Computation and Simulation, Volume 76, Number 11, 1017-1025.

Emrich, L.J. and Piedmonte, M.R., A method for generating high-dimensional multivariate binary
variates, The American Statistician, 45:302-304, 1991.
}


