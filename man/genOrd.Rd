\name{genOrd}
\alias{genOrd}

\title{
Generates multivariate ordinal data from binary parameters
}
\description{
Generates multivariate ordinal data from the ordinal marginal probabilities and a list returned 
by the \code{\link{simBinCorr}} function.
}
\usage{
genOrd(no.rows, ordPmat, binObj)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{no.rows}{
 Number of rows
}
  \item{ordPmat}{
Input matrix of ordinal marginal probabilities
}
  \item{binObj}{
 A list returned by the \code{\link{simBinCorr}}
}
}
\details{
 It generates multivariate ordinal data. The argument \strong{binObj} must be obtained using \code{\link{simBinCorr}} before executing this function.
}
\value{
\item{Mydata}{A list with two components. Two components are a matrix of multivariate 
	ordinal data (y) and its correlation matrix (Corr)}
}


\seealso{
\code{\link{simBinCorr}}, \code{\link{BinToOrd}},  \code{\link{generate.binary}}
}
\examples{
\dontrun{ordPmat1 = matrix( c(0.15,0.70,0.40,
					0.55,0.10,0.25,
					0.25,0.10,0.15,
					0.05,0.10,0.20),4,3,byrow=TRUE)}
\dontrun{cmat1= matrix( 	c(1,0.2,0.2,
				0.2,1,0.2,
				0.2,0.2,1),3,3,byrow=TRUE) }
\dontrun{binObj=simBinCorr(ordPmat1, cmat1, no.rows=100000, steps=0.025)	}	
\dontrun{myData = genOrd( 1000, ordPmat1, binObj)	}	
}

