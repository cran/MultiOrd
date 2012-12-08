\name{simBinCorr}
\alias{simBinCorr}
\title{
Calculates intermediate binary correlation matrix
}
\description{
Calculates intermediate binary correlation matrix via simulation.
}
\usage{
simBinCorr(ordPmat, CorrMat, nSim, steps = 0.025)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{ordPmat}{
	Input matrix of ordinal marginal probabilities
}
  \item{CorrMat}{
	Correlation matrix of the multivariate ordinal data
}
  \item{nSim}{
	Number of simulations to use to calculate intermediate binary correlation matrix
}
  \item{steps}{
	Fraction of difference between the current and target matrix to be added in each iteration.
}
}

\value{
  \item{del.next }{Calculated binary correlation matrix}
  \item{Mlocation}{Cutoff point for converting ordinal probabilities to binary ones.}
  \item{pvec}{Vector of binary probabilities}
}

\seealso{
 \code{\link{generate.binary}},   \code{\link{BinToOrd}}
}
\examples{
\dontrun{ordPmat1 = matrix( c(0.15,0.70,0.40,
					0.55,0.10,0.25,
					0.25,0.10,0.15,
					0.05,0.10,0.20),4,3,byrow=TRUE)}
\dontrun{cmat1= matrix( 	c(1,0.2,0.2,
				0.2,1,0.2,
				0.2,0.2,1),3,3,byrow=TRUE)}
\dontrun{simBinCorr(ordPmat1, cmat1, nSim=100000, steps = 0.025)}
				
}
