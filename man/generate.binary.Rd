\name{generate.binary}
\alias{generate.binary}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Generates multivariate binary data given marginal probabilities and correlation.
}
\usage{
generate.binary(nObs, prop.vec.bin, corr.mat)
}
\description{
Generates multivariate binary data given marginal probabilities and correlation based on the algorithm described in Emrich and Piedmonte (1991).
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{nObs}{
	Number of observations
}
  \item{prop.vec.bin}{
    	Vector of binary marginal probabilities
}
  \item{corr.mat}{
	correlation matrix of the binary data
}
}
\details{
It generates multivariate binary data from the marginal probabilities and correlation matrix. It uses
the algorithm described in Emrich and Piedmonte (1991). In the process, if the tetrachoric correlation
matrix is non-positive definite, a nearest positive definite matrix is used.
}
\value{
\item{data}{Matrix of multivariate binary data}
}


\seealso{
 \code{\link{nearPD}},  \code{\link{compute.sigma.star}}
}
\examples{
\dontrun{ordPmat1 = matrix( c(0.15,0.70,0.40,
					0.55,0.10,0.25,
					0.25,0.10,0.15,
					0.05,0.10,0.20),4,3,byrow=TRUE)}
\dontrun{cmat1= matrix( 	c(1,0.2,0.2,
				0.2,1,0.2,
				0.2,0.2,1),3,3,byrow=TRUE)}
\dontrun{p=find.binary.prob(ordPmat1) }
\dontrun{finalCorr = simBinCorr(ordPmat1, cmat1, no.rows=100000)}
\dontrun{y=generate.binary( 1000, p$p, finalCorr$del.next)}
}

