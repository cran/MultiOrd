\name{find.binary.prob}
\alias{find.binary.prob}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Collapses the ordinal categories to binary ones
}
\description{
Collapses the ordinal categories to binary ones and counts the number of categories in each variable.
}
\usage{
find.binary.prob(ordPmat)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{ordPmat}{
	Input matrix of ordinal marginal probabilities.
}
}

\value{
	  \item{p}{Vector of binary probabilites} 
	  \item{Mlocation}{Vector of points where ordinal variables will be dichotomized}
}

\examples{
ordPmat1 = matrix( c(0.15,0.70,0.40,
					0.55,0.10,0.25,
					0.25,0.10,0.15,
					0.05,0.10,0.20),4,3,byrow=TRUE)
find.binary.prob(ordPmat1)
 
}
\seealso{
\code{\link{validation.ordPmat}}
}
