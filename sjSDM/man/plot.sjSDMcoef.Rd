\name{plot.sjSDMcoef}
\alias{plot.sjSDMcoef}
\title{plot.sjSDMcoef}
\description{
plot the Coeffect return by sjSDM
}
\usage{
plot.sjSDMcoef(object, wrap_col, group = NULL, col = NULL)
}

\arguments{
  \item{object}{a model fitted by \code{\link{sjSDM}}
}
  \item{wrap_col}{number of columns to plot
}
  \item{group}{Define the taxonomic characteristics of a species, you need to provide a dataframe with a column for the name of the species and a column for the attributes, default is NULL. For example, Group [1,1]== "sp1", group[1,2]== "Mammal".
}
  \item{col}{Define colors for groups, default is NULL.}
}

\author{
CAI Wang
}

\examples{
\donttest{
library(sjSDM)
# simulate community:
com = simulate_SDM(env = 6L, species = 7L, sites = 100L)

# fit model:
model = sjSDM(Y = com$response,env = com$env_weights, iter = 2L,se = TRUE) 

#create a group dataframe for plot
species=c("sp1","sp2","sp3","sp4","sp5","sp6","sp7")
group=c("mammal","bird","fish","fish","mammal","amphibian","amphibian")
group = data.frame(species=species,group=group)

plot.sjSDMcoef(model,wrap_col=3,group=group)
}
}

