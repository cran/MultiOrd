\name{validation.ordPmat}
\alias{validation.ordPmat}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Validates matrix of ordinal probabilities
}
\description{
Validates the range of input matrix of marginal probabilities. It also counts the ordinal categories for each variable.
}
\usage{
validation.ordPmat(ordPmat)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{ordPmat}{Matrix of marginal probabilities.
}
}
\details{
Number of columns of input matrix is the number of variables and each column contains probability
of each category within each variable. Any probability with 0 value must be entered at the end of corresponding column.
For example if a column contains c(0.3,0.5,0.2,0), then it is assumed that particular variable has only
3 (1, 2 and 3) categories.
}
\value{

 \item{J }{Number of ordinal variables}
 \item{K }{Vector of number of categories for each variable}

}

\examples{
\dontrun{
# 3 outcomes with 3, 4 and 4 categories.
ordPmat1 = matrix( c(0.15,0.70,0.40,
					0.55,0.10,0.25,
					0.30,0.10,0.15,
					0,0.10,0.20),4,3,byrow=TRUE)
validation.ordPmat(ordPmat1)
}

}

