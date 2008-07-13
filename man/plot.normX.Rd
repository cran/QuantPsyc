\name{plot.norm}
\alias{plot.normX}
\alias{plot.normXm}
\title{ Normal Density Plot}
\description{
  Plots the density distribution of 'x' (e.g., smoothed histogram) with an overlaying normal density plot with the same mean and SD. This is useful for 'seeing' the degree of deviance from normality.
}
\usage{
plot.normX(x, ...)
plot.normXm(x, ...)
}
\arguments{
  \item{x}{ any data object such as a column(s) or variable(s) from a data.frame}
  \item{...}{to be determined}
}
\details{
\code{plot.normX} is useful for single use (univariate) objects, but \code{plot.normXm} is more useful for creating multiple graphs (i.e., multivariate) as in sending graphs to a postcript or pdf device. See examples below. }
\value{
A graph of density of x. 
}

\author{ Thomas D. Fletcher \email{tom.fletcher.mp7e@statefarm.com} } 

}
\seealso{ \code{\link{eda.uni}} }

\examples{
#	plot.normX	
data(USJudgeRatings)	# data packaged with R
plot.normX(USJudgeRatings$CONT) 

# creates a pdf file that contains plots for all 12 variables in USJudgeRatings

#	plot.normXm	
data(USJudgeRatings)	
pdf("Judge.pdf")	#writes file to working directory 
for (i in 1:12) { plot.normXm(USJudgeRatings) }
dev.off()}

\keyword{distribution}
\keyword{smooth}