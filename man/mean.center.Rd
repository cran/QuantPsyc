\name{mean.center}
\alias{mean.center}

\title{ Mean Center Variables}
\description{
  This simple function subtracts the mean from a variable rendering mean-centered variables.
}
\usage{
mean.center(x, ...)
}
\arguments{
  \item{x}{ variable or column of data to be centered }
  \item{...}{to be determined}
  }
\details{
  This is particularly useful in lm() with higher order terms as in moderation. 
}
\value{
  a numeric; mean centered 'x'
}
\author{ Thomas D. Fletcher \email{FletcherT@umsl.edu} \cr
\url{http://www.umsl.edu/~fletchert} }



\examples{
data(USJudgeRatings)
usCONT <- mean.center(USJudgeRatings$CONT)
summary(usCONT)

}
\keyword{ univar }
